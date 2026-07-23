import { supabase } from './supabaseClient';
import { hojeISO, ontemISO } from '../lib/dateUtils';

const IMPLEMENTED_TYPES = [
  'flashcard',
  'multiple_choice',
  'fill_blank',
  'word_order',
  'matching',
  'typing',
  'dictation',
  'listening',
];

export async function fetchModulesWithProgress(userId) {
  const { data: modules, error: modulesError } = await supabase
    .from('modules')
    .select('id, title, description, sort_order, lessons(id, title, sort_order, xp_reward)')
    .eq('cefr_level', 'A1')
    .eq('is_published', true)
    .order('sort_order');

  if (modulesError) throw modulesError;

  const { data: progress, error: progressError } = await supabase
    .from('user_progress')
    .select('lesson_id, status, score')
    .eq('user_id', userId);

  if (progressError) throw progressError;

  const progressByLesson = Object.fromEntries(
    (progress ?? []).map((p) => [p.lesson_id, p])
  );

  return modules.map((module) => {
    const lessons = [...module.lessons].sort((a, b) => a.sort_order - b.sort_order);
    let previousCompleted = true;

    const lessonsWithStatus = lessons.map((lesson) => {
      const lessonProgress = progressByLesson[lesson.id];
      const completed = lessonProgress?.status === 'completed';
      const locked = !previousCompleted && !completed;
      previousCompleted = completed;

      return {
        ...lesson,
        status: completed ? 'completed' : locked ? 'locked' : 'available',
        score: lessonProgress?.score ?? null,
      };
    });

    return { ...module, lessons: lessonsWithStatus };
  });
}

export async function fetchLessonExercises(lessonId) {
  const { data: lesson, error: lessonError } = await supabase
    .from('lessons')
    .select('id, title, xp_reward')
    .eq('id', lessonId)
    .single();

  if (lessonError) throw lessonError;

  const { data: exercises, error: exercisesError } = await supabase
    .from('exercises')
    .select('id, type, sort_order, content')
    .eq('lesson_id', lessonId)
    .in('type', IMPLEMENTED_TYPES)
    .order('sort_order');

  if (exercisesError) throw exercisesError;

  const vocabularyIds = exercises
    .filter((e) => e.type === 'flashcard')
    .map((e) => e.content.vocabulary_id);

  let vocabularyById = {};
  if (vocabularyIds.length > 0) {
    const { data: vocabulary, error: vocabError } = await supabase
      .from('vocabulary')
      .select('*')
      .in('id', vocabularyIds);

    if (vocabError) throw vocabError;
    vocabularyById = Object.fromEntries(vocabulary.map((v) => [v.id, v]));
  }

  return { lesson, exercises, vocabularyById };
}

function computeStreak(profile) {
  const today = hojeISO();
  const yesterday = ontemISO();

  if (profile.last_study_date === today) {
    return { streak_current: profile.streak_current, streak_best: profile.streak_best };
  }

  const newStreak =
    profile.last_study_date === yesterday ? profile.streak_current + 1 : 1;

  return {
    streak_current: newStreak,
    streak_best: Math.max(profile.streak_best, newStreak),
  };
}

export async function completeLesson({ userId, lessonId, xpReward, score, profile }) {
  const { error: progressError } = await supabase.from('user_progress').upsert(
    {
      user_id: userId,
      lesson_id: lessonId,
      status: 'completed',
      score,
      completed_at: new Date().toISOString(),
    },
    { onConflict: 'user_id,lesson_id' }
  );
  if (progressError) throw progressError;

  const { error: xpEventError } = await supabase.from('xp_events').insert({
    user_id: userId,
    amount: xpReward,
    source: 'lesson',
  });
  if (xpEventError) throw xpEventError;

  const { streak_current, streak_best } = computeStreak(profile);

  const { data: updatedProfile, error: profileError } = await supabase
    .from('profiles')
    .update({
      xp_total: profile.xp_total + xpReward,
      streak_current,
      streak_best,
      last_study_date: hojeISO(),
    })
    .eq('id', userId)
    .select()
    .single();

  if (profileError) throw profileError;

  return updatedProfile;
}

// Edge Function: vocab-image-proxy
// Busca uma imagem no Unsplash para uma palavra do vocabulário e cacheia o
// resultado em `vocabulary` (image_url + crédito do fotógrafo, exigido pela
// Unsplash API). A chave NUNCA sai daqui.
//
// Secrets necessários (supabase secrets set ...):
//   UNSPLASH_ACCESS_KEY
// Injetados automaticamente pelo Supabase:
//   SUPABASE_URL, SUPABASE_ANON_KEY, SUPABASE_SERVICE_ROLE_KEY

import { createClient } from 'jsr:@supabase/supabase-js@2';

const UNSPLASH_SEARCH_URL = 'https://api.unsplash.com/search/photos';

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers':
    'authorization, x-client-info, apikey, content-type',
  'Access-Control-Allow-Methods': 'POST, OPTIONS',
};

Deno.serve(async (req) => {
  if (req.method === 'OPTIONS') {
    return new Response('ok', { headers: corsHeaders });
  }

  try {
    // 1. Valida o usuário pelo JWT enviado pelo supabase.functions.invoke.
    const authHeader = req.headers.get('Authorization') ?? '';
    const token = authHeader.replace('Bearer ', '');
    const supabaseUser = createClient(
      Deno.env.get('SUPABASE_URL') ?? '',
      Deno.env.get('SUPABASE_ANON_KEY') ?? ''
    );
    const { data: { user } } = await supabaseUser.auth.getUser(token);

    if (!user) {
      return new Response(JSON.stringify({ error: 'Não autenticado' }), {
        status: 401,
        headers: { ...corsHeaders, 'content-type': 'application/json' },
      });
    }

    const { vocabularyId } = await req.json();
    if (!vocabularyId) {
      return new Response(JSON.stringify({ error: 'vocabularyId obrigatório' }), {
        status: 400,
        headers: { ...corsHeaders, 'content-type': 'application/json' },
      });
    }

    // 2. Lê/escreve com service role — vocabulary só tem policy de SELECT.
    const admin = createClient(
      Deno.env.get('SUPABASE_URL') ?? '',
      Deno.env.get('SUPABASE_SERVICE_ROLE_KEY') ?? ''
    );

    const { data: vocab, error: vocabError } = await admin
      .from('vocabulary')
      .select('id, word, image_url, image_photographer, image_photographer_url')
      .eq('id', vocabularyId)
      .single();

    if (vocabError || !vocab) {
      return new Response(JSON.stringify({ error: 'Vocabulário não encontrado' }), {
        status: 404,
        headers: { ...corsHeaders, 'content-type': 'application/json' },
      });
    }

    // Já em cache — não gasta chamada do Unsplash de novo.
    if (vocab.image_url) {
      return new Response(JSON.stringify(vocab), {
        headers: { ...corsHeaders, 'content-type': 'application/json' },
      });
    }

    const searchUrl =
      `${UNSPLASH_SEARCH_URL}?query=${encodeURIComponent(vocab.word)}` +
      '&per_page=1&orientation=squarish&content_filter=high';

    const unsplashRes = await fetch(searchUrl, {
      headers: { Authorization: `Client-ID ${Deno.env.get('UNSPLASH_ACCESS_KEY') ?? ''}` },
    });

    if (!unsplashRes.ok) {
      return new Response(JSON.stringify({ error: 'Falha ao buscar imagem no Unsplash' }), {
        status: 502,
        headers: { ...corsHeaders, 'content-type': 'application/json' },
      });
    }

    const unsplashData = await unsplashRes.json();
    const photo = unsplashData.results?.[0];

    // Sem resultado para a palavra — não é erro, apenas não há imagem disponível.
    if (!photo) {
      return new Response(JSON.stringify(vocab), {
        headers: { ...corsHeaders, 'content-type': 'application/json' },
      });
    }

    const update = {
      image_url: photo.urls.small,
      image_photographer: photo.user.name,
      image_photographer_url: photo.user.links.html,
    };

    const { data: updated, error: updateError } = await admin
      .from('vocabulary')
      .update(update)
      .eq('id', vocabularyId)
      .select()
      .single();

    if (updateError) throw updateError;

    return new Response(JSON.stringify(updated), {
      headers: { ...corsHeaders, 'content-type': 'application/json' },
    });
  } catch (err) {
    return new Response(JSON.stringify({ error: String(err?.message ?? err) }), {
      status: 500,
      headers: { ...corsHeaders, 'content-type': 'application/json' },
    });
  }
});

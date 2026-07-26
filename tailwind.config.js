/** @type {import('tailwindcss').Config} */
export default {
  content: ['./index.html', './src/**/*.{js,jsx}'],
  darkMode: ['selector', '[data-theme="dark"]'],
  theme: {
    extend: {
      colors: {
        bg: 'var(--bg)',
        'bg-soft': 'var(--bg-soft)',
        surface: 'var(--surface)',
        'surface-2': 'var(--surface-2)',
        border: 'var(--border)',
        text: 'var(--text)',
        'text-muted': 'var(--text-muted)',
        primary: 'var(--primary)',
        'primary-dark': 'var(--primary-dark)',
        'primary-soft': 'var(--primary-soft)',
        secondary: 'var(--secondary)',
        success: 'var(--success)',
        'success-dark': 'var(--success-dark)',
        xp: 'var(--xp)',
        warning: 'var(--warning)',
        streak: 'var(--streak)',
        error: 'var(--error)',
        'error-dark': 'var(--error-dark)',
        'skill-listening': 'var(--skill-listening)',
        'skill-speaking': 'var(--skill-speaking)',
        'skill-writing': 'var(--skill-writing)',
      },
      fontFamily: {
        display: ['Inter', 'sans-serif'],
        sans: ['Inter', 'sans-serif'],
      },
      borderRadius: {
        sm: 'var(--radius-sm)',
        md: 'var(--radius-md)',
        lg: 'var(--radius-lg)',
      },
      boxShadow: {
        card: 'var(--shadow-card)',
        'elevation-1': 'var(--shadow-elevation-1)',
        'elevation-2': 'var(--shadow-elevation-2)',
        'elevation-3': 'var(--shadow-elevation-3)',
      },
      backdropBlur: {
        sm: 'var(--blur-sm)',
        md: 'var(--blur-md)',
      },
    },
  },
  plugins: [],
};

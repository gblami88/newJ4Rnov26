import { defineConfig } from 'vite';

export default defineConfig({
  root: '.',
  build: {
    outDir: 'dist',
    rollupOptions: {
      input: {
        index: 'index.html',
        form: 'form.html',
        blog: 'blog.html',
        terms: 'terms.html',
        privacy: 'privacy.html',
        caseStudy: 'case-study.html'
      }
    }
  },
  server: {
    port: 3000
  }
});

import ghPages from 'gh-pages';

ghPages.publish(
  'dist',
  { nojekyll: true, repo: 'https://github.com/kamaal111/base64' },
  (error) => {
    if (error) {
      console.error('❌', error);
      return;
    }

    console.log('🚀 Publish complete');
  },
);

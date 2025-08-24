import { defineConfig } from '@rsbuild/core';
import { pluginReact } from '@rsbuild/plugin-react';

export default defineConfig(() => ({
  plugins: [pluginReact()],
  output: { assetPrefix: '/base64' },
  server: { publicDir: { name: 'public', copyOnBuild: true } },
  dev: { writeToDisk: true },
}));

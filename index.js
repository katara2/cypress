import { defineConfig } from 'cypress';
import { addCucumberPreprocessorPlugin } from '@badeball/cypress-cucumber-preprocessor';
import webpackConfig from '../../webpack.config';

export default defineConfig({
  e2e: {
    setupNodeEvents(on, config) {
      // Add the Cucumber preprocessor plugin
      addCucumberPreprocessorPlugin(on, config);

      // Configure the preprocessor for .feature files
      on('file:preprocessor', require('@badeball/cypress-cucumber-preprocessor').preprocessor);

      // Return the updated config
      return config;
    },
    specPattern: 'cypress/e2e/**/*.feature',
    video: false,
    screenshots: true,
  },
});

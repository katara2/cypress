import { defineConfig } from 'cypress';
import { addCucumberPreprocessorPlugin } from '@badeball/cypress-cucumber-preprocessor';
import * as path from 'path';

export default defineConfig({
  e2e: {
    setupNodeEvents(on, config) {
      // Add Cucumber preprocessor plugin
      addCucumberPreprocessorPlugin(on, config);

      // You may need to specify a preprocessor if using Cucumber
      on('file:preprocessor', require('@badeball/cypress-cucumber-preprocessor').preprocessor);

      // You can also define other plugins or event handlers here
      return config;
    },
    supportFile: false, // Set to true if you have a support file
    specPattern: 'cypress/e2e/**/*.feature',
    video: false,
      },
});



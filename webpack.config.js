module.exports = {
    module: {
      rules: [
        {
          test: /\.feature$/,
          use: [
            {
              loader: 'cucumber-html-reporter',
              options: {
                // Your options here
              }
            }
          ]
        }
      ]
    }
  };
  
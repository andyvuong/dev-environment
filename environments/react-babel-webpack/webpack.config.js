const CopyWebpackPlugin = require('copy-webpack-plugin');
const path = require('path');

const APP_DIR = path.resolve(__dirname, 'app/src')
const BUILD_DIR = path.resolve(__dirname, 'app/dist')

const config = {
  entry: APP_DIR,
  output: {
    filename: 'bundle.js',
    path: BUILD_DIR
  },
  module: {
    rules: [
      {
        test: /\.(js|jsx)$/,
        exclude: /(node_modules|bower_components)/,

        use: {
          loader: 'babel-loader',
          options: {
            presets: ['es2015', 'react']
          }
        }
      }
    ]
  },
  resolve: { extensions: [".jsx", ".js", ".json"] },
  plugins: [
    new CopyWebpackPlugin([
      {from: APP_DIR + '/html/', to: BUILD_DIR}
    ])
  ]
};

module.exports = config;
const path = require('path');
const argv = require('minimist')(process.argv.slice(2));
const ExtractTextPlugin = require('extract-text-webpack-plugin');
const config = require('../../package.json').config;

const isProduction = !!((argv.env && argv.env.production) || argv.p);
// A bit nonsense, yet works...
const publicPath = `/${path.dirname(process.cwd()).split(path.sep).slice(-2).concat(path.basename(process.cwd())).join('/')}/assets/dist/`;
const entry = {};

Object.keys(config.entries).forEach(function (id) {
  entry[id] = config.entries[id];
});

module.exports = {
  entry: entry,
  output: {
    path: path.resolve(__dirname, '../../assets/dist'),
    publicPath: publicPath,
    filename: 'scripts/[name].min.js',
    sourceMapFilename: '[name].[hash].js.map',
    chunkFilename: '[id].chunk.js'
  },
  resolve: {
    extensions: ['.js', '.html'],
    alias: {
      src: path.resolve(__dirname, '../'),
      assets: path.resolve(__dirname, '../assets')
    },
  },
  devServer: {
    host: 'localhost',
    overlay: {
      errors: true,
      warnings: true,
    },
    hotOnly: true,
    proxy: {
      '/': {
        target: config.proxyUrl,
        secure: false,
        changeOrigin: true,
        autoRewrite: true,
      },
    },
    publicPath: `http://localhost:8080${publicPath}`,
  },
  externals: {
    jquery: 'jQuery'
  },
  module: {
    rules: [
      {
        test: /\.js$/,
        include: path.resolve(__dirname, '../'),
        exclude: /node_modules/,
        use: {
          loader: 'eslint-loader'
        }
      },
      {
        test: /\.js$/,
        exclude: [/(node_modules)(?![/|\\](bootstrap|foundation-sites))/],
        use: [
          { loader: 'cache-loader' },
          {
            loader: 'babel-loader',
            options: {
              presets: [
                [path.resolve('./node_modules/babel-preset-es2015'), { modules: false }]
              ],
              cacheDirectory: true
            }
          }]
      },
      {
        test: /\.css$/,
        loader: ['css-hot-loader'].concat(ExtractTextPlugin.extract({
          fallback: 'style-loader',
          use: [
            { loader: 'cache-loader' },
            {
              loader: 'css-loader',
              options: {
                sourceMap: !isProduction
              }
            }],
        })),
      },
      {
        test: /\.scss$/,
        include: path.resolve(__dirname, '../'),
        loader: ['css-hot-loader'].concat(ExtractTextPlugin.extract({
          fallback: 'style-loader',
          use: [
            {
              loader: 'css-loader',
              options: {
                sourceMap: !isProduction
              }
            },
            {
              loader: 'resolve-url-loader',
              options: {
                sourceMap: !isProduction
              }
            },
            {
              loader: 'sass-loader',
              options: {
                sourceMap: !isProduction
              }
            },
          ],
        }))
      },
      {
        test: /\.(png|jpe?g|gif|svg|xml|json)$/,
        include: path.resolve(__dirname, '../'),
        use: {
          loader: 'file-loader',
          options: {
            name: '[path][name].[ext]',
          }
        },
      },
      {
        test: /\.(ttf|eot)$/,
        use: {
          loader: 'file-loader',
          options: {
            name: 'vendor/[name].[ext]',
          }
        },
      },
      {
        test: /\.woff2(\?\S*)?$/,
        use: {
          loader: 'url-loader',
          options: {
            name: 'vendor/[name].[ext]',
            limit: 10000,
            mimetype: 'application/font-woff'
          }
        },
      },
      {
        test: /\.(ttf|eot|woff2?|png|jpe?g|gif|svg)$/,
        use: {
          loader: 'url-loader',
          options: {
            name: 'vendor/[name].[ext]',
            limit: 10000,
            mimetype: 'application/font-woff'
          }
        },
      },
    ]
  }
};

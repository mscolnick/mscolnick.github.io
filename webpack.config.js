var path = require("path")
var webpack = require('webpack')
var BundleTracker = require('webpack-bundle-tracker')

module.exports = {
  context: __dirname,

  entry: './app/app',

  output: {
      path: path.resolve('./build/js/'),
      filename: "[name].js",
  },

  plugins: [
    new BundleTracker({filename: './webpack-stats.json'}),
  ],

  module: {
    loaders: [
      { 
        test: /\.jsx?$/, 
        exclude: /node_modules/, 
        loader: 'babel-loader', 
        query:
          {
            presets:['react']
          }
      }, // to transform JSX into JS
      {test: /\.cjsx$/, loaders: ["coffee", "cjsx"]},
      {test: /\.coffee$/, loader: "coffee"},
      {test: /\.css$/, loader: "style-loader!css-loader" },
      {test: /\.less$/, loader: "style-loader!css-loader!less-loader" },
      {test: /\.gif$/, loader: "url-loader?mimetype=image/png" },
      {test: /\.woff(2)?(\?v=[0-9].[0-9].[0-9])?$/, loader: "url-loader?mimetype=application/font-woff" },
      {test: /\.(ttf|eot|svg)(\?v=[0-9].[0-9].[0-9])?$/, loader: "file-loader?name=[name].[ext]" },
    ],
  },

  resolve: {
    modulesDirectories: ['node_modules', 'bower_components'],
    root: path.resolve('./build/js'),
    extensions: ["", ".jsx", ".cjsx", ".coffee", ".js", "less", "css"],
  },
}
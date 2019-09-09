const { environment } = require('@rails/webpacker')
const merge = require('webpack-merge')

const myCssLoaderOptions = {
    modules: true,
    sourceMap: true,
    // https://github.com/webpack/loader-utils#interpolatename
    localIdentName: '[path][name]__[local]'
}

const CSSLoader = environment.loaders.get('moduleSass').use.find(el => el.loader === 'css-loader')

CSSLoader.options = merge(CSSLoader.options, myCssLoaderOptions)

module.exports = environment

const {src, dest, series, watch} = require('gulp');
const autoprefixer = require('gulp-autoprefixer');

function doAutoprefix() {
    return src('catalog/view/theme/vintagekicks/stylesheet/stylesheet.css')
    .pipe(autoprefixer({
        // overrideBrowserslist: ['last 2 versions'], 
        // write Browserslist in package.json
    }))
    .pipe(dest('catalog/view/theme/vintagekicks/stylesheet/dist'))
}

exports.prefix = doAutoprefix;
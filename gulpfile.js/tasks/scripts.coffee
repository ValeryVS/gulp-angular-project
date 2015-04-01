gulp         = require('gulp')
browserSync  = require('browser-sync')
browserify   = require('browserify')
cofeeify     = require('coffeeify')
uglifyify    = require('uglifyify')
source       = require('vinyl-source-stream')
handleErrors = require('../lib/handleErrors')
config       = require('../config').browserify
fs           = require('fs')
env          = require('../env')  if fs.existsSync('gulpfile.js/env.coffee')

gulp.task 'scripts', ->
  browserify(config, debug: env is 'development')
    .transform('coffeeify')
    .bundle()
    .on('error', handleErrors)
    .pipe(source(config.outputName))
    .pipe(gulp.dest(config.dest))
    .pipe(browserSync.reload({stream:true}))

gulp         = require('gulp')
browserSync  = require('browser-sync')
jade         = require('gulp-jade')
handleErrors = require('../lib/handleErrors')
config       = require('../config').jade
fs           = require('fs')
env          = require('../env')  if fs.existsSync('gulpfile.js/env.coffee')

gulp.task 'jade', ->
  gulp.src(config.src)
    .pipe(jade(
      locals: config.locals
      pretty: env is 'development'))
    .on('error', handleErrors)
    .pipe(gulp.dest(config.dest))
    .pipe(browserSync.reload({stream:true}))

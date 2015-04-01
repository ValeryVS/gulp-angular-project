gulp   = require('gulp')
rename = require('gulp-rename')
config = require('../config').copyCssDependencies

gulp.task 'copyCssDependencies', ->
  gulp.src(config.src)
    .pipe(rename (path) ->
      path.extname = '.scss'
      return
    )
    .pipe(gulp.dest(config.dest))

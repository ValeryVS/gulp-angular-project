gulp   = require('gulp')
config = require('../config')
watch  = require('gulp-watch')

gulp.task 'watch', ['browserSync'], ->
  watch [
    config.watch.coffee.src
    config.watch.scripts.src
  ], ->
    gulp.start 'scripts'
    return
  watch config.watch.sass.src, ->
    gulp.start 'sass'
    return
  watch config.watch.css.src, ->
    gulp.start 'importCss'
    return
  watch config.watch.html.src, ->
    gulp.start 'jade'
    return
  watch config.watch.images.src, ->
    gulp.start 'images'
    return
  watch config.watch.iconFont.src, ->
    gulp.start 'iconFont'
    return
  watch config.watch.copy.src, ->
    gulp.start 'copy'
    return
  return

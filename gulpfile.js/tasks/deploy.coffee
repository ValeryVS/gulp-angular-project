gulp    = require('gulp')
ghPages = require('gulp-gh-pages')
open    = require('open')
gulpif  = require('gulp-if')
config  = require('../config').deploy
fs      = require('fs')
env     = require('../env')  if fs.existsSync('gulpfile.js/env.coffee')

gulp.task 'deploy', ['build'], ->
  gulp.src(config.src)
    .pipe(gulpif(env is 'development',
      prompt.confirm('You try to deploy development build. Continue?')
    ))
    .pipe(ghPages())
    .on 'end', ->
      open(config.url)
      return

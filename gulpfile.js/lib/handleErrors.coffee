notify = require('gulp-notify')

module.exports = (errorObject, callback) ->
  notify
    .onError(errorObject
      .toString()
      .split(': ')
      .join(':\n'))
    .apply(this, arguments)
  # Keep gulp from hanging on this task
  if typeof @emit is 'function'
    @emit 'end'
  return

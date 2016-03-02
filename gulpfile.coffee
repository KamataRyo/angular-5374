gulp    = require 'gulp'
plumber = require 'gulp-plumber'
coffee  = require 'gulp-coffee'


gulp.task 'coffee', ->
    gulp.src 'js/*.coffee'
        .pipe plumber()
        .pipe coffee bare:false
        .pipe gulp.dest 'js/'

gulp.task 'build', ['coffee']

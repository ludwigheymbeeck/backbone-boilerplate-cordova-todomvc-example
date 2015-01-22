module.exports = ->
  @loadNpmTasks "grunt-contrib-copy"

  # copy images to distribution directory
  @config "copy",
    release:
      files: [{
          expand: true,
          src: '**/*',
          cwd: 'app/img/',
          dest: 'dist/www/img'
      }]
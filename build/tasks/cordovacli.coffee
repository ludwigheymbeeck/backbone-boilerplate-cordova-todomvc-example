module.exports = ->
  @loadNpmTasks "grunt-cordovacli"

  # Wipe out unminized styles build.
  @config "cordovacli",
    cordova:
        options:
#            command: ['create','platform','plugin','build']
            command: 'create'
#            platforms: ['ios','android']
            platforms: 'android'
            plugins: ['device','dialogs']
            path: 'dist'
            id: 'com.planetva.todo'
            name: 'ToDo'
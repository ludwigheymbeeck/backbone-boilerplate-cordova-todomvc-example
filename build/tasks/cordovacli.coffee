module.exports = ->
  @loadNpmTasks "grunt-cordovacli"

  # Wipe out unminized styles build.
  @config "cordovacli",
    cordova:
        options:
#            command: ['create','platform','plugin','build']
            command: ['create','plugin']
#            platforms: ['ios','android']
            platforms: 'android'
#            plugins: ['device','dialogs']
            plugins: [
                      'battery-status',
                      'camera',
                      'console',
                      'contacts',
                      'device',
                      'device-motion',
                      'device-orientation',
                      'dialogs',
                      'file',
                      'geolocation',
                      'globalization',
                      'inappbrowser',
                      'media',
                      'media-capture',
                      'network-information',
                      'splashscreen',
                      'vibration'
                      ]
            path: 'dist'
            id: 'com.planetva.todo'
            name: 'ToDo'
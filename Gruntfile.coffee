module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')

    clean:
      css: ['site/css/*.css']
      js: ['site/js/*.js']

    sass:
      dist:
        files: [{
          expand: true
          cwd: 'site/css'
          src: ['*.scss']
          dest: 'site/css'
          ext: '.css'
        }]

    coffee:
      dist:
        files: [{
          expand: true
          cwd: 'site/js'
          src: ['*.coffee']
          dest: 'site/js'
          ext: '.js'
        }]

    spritify:
      dist:
        options:
          input: 'site/css/default.css',
          output: 'site/css/default.css',
          png: '../images/sprites.png'

  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-spritify'

  grunt.registerTask 'default', "Generate static sites and assets", [
    'clean',
    'sass',
    'coffee',
    'spritify'
  ]


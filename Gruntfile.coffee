module.exports = (grunt) ->

    grunt.initConfig

        watch:

            options:
                spawn: false

            livereload:
                options:
                    livereload: true
                files: ['index.html', 'notes.md', 'css/source/theme.scss']
                tasks: ['sass']

            coffeelint:
                files: ['Gruntfile.coffee']

        connect:

            livereload:
                options:
                    # port: 9000
                    # Change hostname to '0.0.0.0' to access
                    # the server from outside.
                    # hostname: '0.0.0.0',
                    base: '.'
                    open: true
                    livereload: true

        sass:

            theme:
                files:
                    'css/theme.css': 'css/source/theme.scss'

        coffeelint:

            options:
                indentation:
                    value: 4

            src: ['Gruntfile.coffee']

    # Load all grunt tasks.
    require('load-grunt-tasks')(grunt)

    # Define default task.
    grunt.registerTask('default', [
        'coffeelint',
        'sass',
        'connect:livereload',
        'watch'
    ])

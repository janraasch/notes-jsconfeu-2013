module.exports = (grunt) ->

    # Configuration.
    yeomanConfig =
        livereloadPort: 35729 # Recommended standard.

    grunt.initConfig

        watch:
            options:
                spawn: false

            livereload:
                options:
                    livereload: yeomanConfig.livereloadPort
                files: ['index.html', 'notes.md']

            coffeelint:
                files: ['Gruntfile.coffee']

        connect:
            livereload:
                options:
                    # port: 9000
                    # Change hostname to '0.0.0.0' to access
                    # the server from outside.
                    # hostname: '0.0.0.0',
                    base: require('path').resolve('.')
                    open: true
                    middleware: (connect, options) ->
                        [
                            # Add livereload middleware.
                            require('connect-livereload')(
                                port: yeomanConfig.livereloadPort
                            ),
                            connect.static(options.base)
                        ]

        coffeelint:
            options:
                indentation:
                    value: 4
            src: ['Gruntfile.coffee']

    # Load all grunt tasks.
    require('load-grunt-tasks')(grunt)

    # Define default task.
    grunt.registerTask('default', ['coffeelint', 'connect:livereload', 'watch'])

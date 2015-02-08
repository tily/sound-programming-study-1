module.exports = (grunt)->
	grunt.initConfig
		coffee:
			app:
				options: {bare: true}
				bare: true
				expand: true
				cwd: 'coffeescripts'
				src: ['**/*.coffee']
				dest: 'javascripts'
				ext: '.js'
		watch:
			app:
				files: ['coffeescripts/*.coffee']
				tasks: 'coffee'
	grunt.loadNpmTasks('grunt-contrib-coffee')
	grunt.loadNpmTasks('grunt-contrib-watch')
	grunt.registerTask('default', ['coffee'])

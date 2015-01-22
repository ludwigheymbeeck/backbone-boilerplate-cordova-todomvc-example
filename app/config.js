require.config({
	// paths: {
	// "underscore": "../bower_components/lodash/dist/lodash.underscore",
	// "lodash": "../bower_components/lodash/dist/lodash",
	// "template": "../bower_components/lodash-template-loader/loader",
	// "jquery": "../bower_components/jquery/dist/jquery",
	// "backbone": "../bower_components/backbone/backbone"
	// },

	// The shim config allows us to configure dependencies for
	// scripts that do not call define() to register a module
	shim: {
		underscore: {
			exports: '_'
		},
		backbone: {
			deps: [
				'underscore',
				'jquery'
			],
			exports: 'Backbone'
		},
		backboneLocalstorage: {
			deps: ['backbone'],
			exports: 'Store'
		}
	},
	paths: {
		jquery: '../bower_components/jquery/dist/jquery',
		underscore: '../bower_components/underscore/underscore',
		backbone: '../bower_components/backbone/backbone',
		backboneLocalstorage: '../bower_components/backbone.localStorage/backbone.localStorage',
		text: '../bower_components/requirejs-text/text'
	}
});

require(['main']);  // Initialize the application with the main application file.
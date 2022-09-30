module.exports = function(grunt){

	// Assets 
	var jsfiles = [
				'assets/plugins/jquery/dist/jquery.js', // jQuery 2.2.0
				'assets/plugins/jquery-ui/jquery-ui.js', // jQuery UI 
				'assets/plugins/modernizr/modernizr-2.7.1.min.js', // Modernizr
				'assets/plugins/bootstrap/dist/js/bootstrap.js', // Bootstrap
				'assets/plugins/dev-animate/dev-animate.js', 
				'assets/plugins/dev-parallax/dev-parallax.js', 
				'assets/js/devsolution.plugins.js',
				'assets/plugins/jquery-waypoints/waypoints.js', // jQuery Waypoints
				'assets/plugins/gmap/gmap3.min.js',
				'assets/plugins/devgooglemaps/DevGoogleMaps.js', 
		      	'assets/plugins/jquery.countdown/dist/jquery.countdown.min.js',
		      	'assets/plugins/devmodals/js/devmodals.min.js',
		      	'assets/plugins/magnific-popup/dist/jquery.magnific-popup.js',
		      	//'assets/plugins/royalslider/jquery.royalslider.min.js',
		      	'assets/plugins/isotope/dist/isotope.pkgd.js', // Isotope Package
		      	'assets/plugins/masonry/dist/masonry.pkgd.js', // Masonry Package
		      	'assets/plugins/form/jquery.form.min.js',
		      	'assets/plugins/form/jquery.validate.js',
		      	'assets/plugins/sidr/dist/jquery.sidr.js',
		      	'assets/plugins/semantic-ui-transition/transition.min.js',
		      	'assets/plugins/semantic-ui-dropdown/dropdown.min.js',
		      	'assets/plugins/owl.carousel/dist/owl.carousel.js', // OLD
		      	'assets/plugins/mediaelement/mediaelement-and-player.js',
		      	'assets/plugins/fitvideo/jquery.fitvids.js',
		      	'assets/plugins/customSelectBox/selectBox.min.js',
		      	'assets/plugins/animsition/js/animsition.js',
		      	'assets/plugins/dev-overlay/dev-overlay.js',
		      	'assets/plugins/dev-timeline/dev-timeline.js',
		      	'assets/plugins/jquery-migrate/jquery-migrate.js', // jQuery Migrate 1.4.0
	];

	var cssfiles = [
				'assets/plugins/dev-overlay/dev-overlay.css',
				'assets/icons/industry-icons/style.css',
				'assets/plugins/font-awesome/css/font-awesome.css',
				'assets/icons/pe-icon-7-stroke/css/pe-icon-7-stroke.css',
				'assets/plugins/bootstrap/dist/css/bootstrap.css', // Bootstrap
				'assets/plugins/revolution/css/settings-ver.5.2.3.css', // Revolution Slider Settings
				'assets/plugins/revolution/css/layers.css', // Revolution Slider Layers
				'assets/plugins/revolution/css/navigation.css', // Revolution Slider Navigations
				'assets/plugins/devmodals/css/DevModals.min.css',
				'assets/plugins/jquery-ui/jquery-ui.css',
				'assets/plugins/customSelectBox/selectBox.css',
	    		'assets/plugins/magnific-popup/dist/magnific-popup.css',
	    		'assets/plugins/owl.carousel/dist/assets/owl.carousel.css', // Owl Carousel // OLD
	    		'assets/plugins/mediaelement/mediaelementplayer.css', // Mediaelement
	    		//'assets/plugins/owl.carousel/dist/assets/owl.theme.default.css', // Owl Carousel Theme
	    		//'assets/plugins/royalslider/royalslider.css',
	    		'assets/plugins/semantic-ui-transition/transition.min.css',
	    		'assets/plugins/semantic-ui-icon/icon.min.css',
	    		'assets/plugins/semantic-ui-dropdown/dropdown.min.css',
	    		'assets/plugins/sidr/dist/stylesheets/jquery.sidr.light.css',
	    		'assets/plugins/animsition/css/animsition.css',
	];

	// Project configuration.
	grunt.initConfig({
	  pkg: grunt.file.readJSON('package.json'),

	  // Watch
	  watch: {

	  	// Setup
	  	devsetup: {
	  		files: ['assets/js/devsolution.setup.js'],
	  		tasks: ['uglify:devsetup']
	  	},

	  	// Assets
		js: {
		    files: jsfiles,
		    tasks: ['uglify:js']
		},

		css: {
			files: cssfiles,
			tasks: ['cssmin:css']
		},

		// HTML files Watch
		html: {
			files: ['index.html'],
			tasks: ['htmlmin:dev']
		}
	  }, // Watch

	  // Uglify
	  uglify: {
	  	  options:{
	  	  	banner: '/*! <%= pkg.name %> | Author <%= pkg.author %> | Version <%= pkg.version %> | MIT Licensed */',
	  	  },

	  	  // Setup
	  	  devsetup: {
	  	  	files: {
	  	  		'assets/js/devsolution.setup.min.js' : ['assets/js/devsolution.setup.js']
	  	  	}
	  	  },

	  	  // Assets
	      js: {
	      	options: {
		        sourceMap : true,
		        sourceMapName : 'assets/js/plugins.map',
		        compress: false
		    },
	        files: {
	            'assets/js/devsolution.assets.min.js' : jsfiles
	        }
	      },
	  }, // Uglify

	  // CSS Min
	  cssmin: {
	  	  options: {
	  	  	 keepSpecialComments: 0,
	         banner: '/*! <%= pkg.name %> | Author <%= pkg.author %> | Version <%= pkg.version %> | MIT Licensed */'
	      },

	      // Assets
		  css: {
		    files: {
		      	'assets/css/devsolution.assets.min.css': cssfiles
		    }
		  }
	  },

	  // Minify HTML
	  htmlmin: {
	  	dev: {
	  		options: {                              
		        removeComments: true,
		        collapseWhitespace: true
		    },
		    files: {                                   
		        'index.min.html': 'index.html',
		        'about-us.min.html': 'about-us.html',
		        'projects.min.html': 'projects.html',
		        'projects-four.min.html': 'projects-four.html',
		        'projects-three.min.html': 'projects-three.html',
		        'projects-two.min.html': 'projects-two.html',
		        'projects-details.min.html': 'projects-details.html',
		        'our-services.min.html': 'our-services.html',
		        'target-details.min.html': 'target-details.html',
		        'blog.min.html': 'blog.html',
		        'industry-detail.min.html': 'industry-detail.html',
		        'get-qoute.min.html': 'get-qoute.html',
		        '404.min.html': '404.html',
		        'coming-soon.min.html': 'coming-soon.html',
		        'contact.min.html': 'contact.html',
		    }
	  	}
	  },
	  												// Image optimize
	  imagemin: {   								// Task
	  	options: {                       			// Target options
		    optimizationLevel: 5,
		    svgoPlugins: [{ removeViewBox: false }]
		},
	   	dynamic: {                        			// Another target
	      	files: [{
	       	 	expand: true,                     	// Enable dynamic expansion
	        	cwd: 'demo/',                      	// Src matches are relative to this path
	        	src: ['**/*.{png,jpg,gif}'], 		// Actual patterns to match
	        	dest: 'demo-optimized/'             // Destination path prefix
	      	}]
	   	}
	 }
	}); // End Project Configuration

	// NPM Tasks
	grunt.loadNpmTasks('grunt-contrib-watch');
	grunt.loadNpmTasks('grunt-contrib-uglify');
	grunt.loadNpmTasks('grunt-contrib-cssmin');
	grunt.loadNpmTasks('grunt-contrib-htmlmin');
	grunt.loadNpmTasks('grunt-contrib-imagemin');

	grunt.registerTask('default', ['uglify', 'cssmin', 'htmlmin', 'imagemin', 'watch']);

}
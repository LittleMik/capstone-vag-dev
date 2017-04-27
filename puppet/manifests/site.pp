# Configure server
node 'development.eventapp.vm' {
	class { 'apache':                # use the "apache" module
		default_vhost => false,        # don't use the default vhost
		default_mods => false,         # don't load default mods
		mpm_module => 'prefork',        # use the "prefork" mpm_module
	}
	
	include apache::mod::php        # include mod php
	
	apache::vhost { 'example.com':  # create a vhost called "example.com"
		port    => '80',               # use port 80
		docroot => '/var/www/app',     # set the docroot to the /var/www/app
	}
	
	# Setting up the document root
	file { ['/var/www', '/var/www/app'] : 
		ensure => directory,
	}

	file { '/var/www/app/index.php' :
		content => '<?php phpinfo(); ?>',
	}
}
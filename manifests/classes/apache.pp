class apache {
	if( $::operatingsystem == 'centos' )
	{
		$apache_pkg = 'httpd'
		$apache_srv = 'httpd'
		$apache_conf = '/etc/httpd/conf/httpd.conf'
	}
	package {$apache_pkg:
		ensure => installed,
		before => File['/etc/httpd/conf/httpd.conf']
	}
	file {$apache_conf:
		ensure => file,
		owner  => 'root',
		group  => 'root',
		source => "puppet:///files/httpd.conf",
		notify => Service["${apache_srv}"],
	}
	service {$apache_srv:
                ensure => running,
	}
	package {'elinks':
		ensure => installed,
	}
	file {'/www':
		ensure => directory,
		owner  => 'root',
		group  => 'root',
		mode   => '0755',
		before => Package["${apache_pkg}"],
	}
	file {'/www/sridhar.com':
                ensure => directory,
                owner  => 'root',
                group  => 'root',
                mode   => '0755',
		before => Package["${apache_pkg}"],	
        }
	file {'/www/sridhar.com/index.html':
                ensure => file,
                owner  => 'root',
                group  => 'root',
                mode   => '0755',
		before => Package["${apache_pkg}"],
		content => "Hello this is sridhar.com\n New line added here",
        }
	file {'/etc/httpd/conf.d/sridhar.conf':
		ensure => file,
                owner  => 'root',
                group  => 'root',
                mode   => '0644',
		source => "puppet:///files/sridhar.conf",
		notify => Service["${apache_srv}"],
	}
}

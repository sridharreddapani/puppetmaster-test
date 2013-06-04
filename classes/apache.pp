class apache {
	package {'httpd':
		ensure => installed,
	}
	file {'/etc/httpd/conf/httpd.conf':
		ensure => file,
		owner  => 'root',
		group  => 'root',
		source => "puppet:///files/httpd.conf",
		notify => Service['httpd']
	}
	service {'httpd':
                ensure => running,

	}
	service {'elinks':
		ensure => installed,
	}
	file {'/www':
		ensure => directory,
		owner  => 'root',
		group  => 'root',
		mode   => '0755',
	}
	file {'/www/sridhar.com':
                ensure => directory,
                owner  => 'root',
                group  => 'root',
                mode   => '0755',
        }
	file {'/www/sridhar.com/index.html':
                ensure => file,
                owner  => 'root',
                group  => 'root',
                mode   => '0755',
		content => "Hello this is sridhar.com\n New line added here",
        }
	file {'/etc/httpd/conf.d/sridhar.conf':
		ensure => file,
                owner  => 'root',
                group  => 'root',
                mode   => '0644',
		source => "puppet:///files/sridhar.conf",
		notify => Service['httpd'],
	}
}

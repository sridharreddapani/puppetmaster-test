class ssh {
	package {'sshd':
		ensure => installed,
	}
	file {'/etc/ssh/sshd_config':
		ensure => file,
		owner  => 'root',
		group  => 'root',
		mode   => '0600',
		notify => Service['sshd'],
	}
	service {'sshd':
		ensure => running,
	}
	
}


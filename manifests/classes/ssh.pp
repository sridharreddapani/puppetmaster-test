class ssh {
	package {'openssh':
		ensure => installed,
	}
	package {'openssh-clients':
	        ensure => installed,
	}
	file {'/etc/ssh/sshd_config':
		ensure => file,
		owner  => 'root',
		group  => 'root',
		mode   => '0600',
		notify => Service['sshd'],
	}
	file {'/root/.ssh/authorized_keys':
		ensure => file,
		owner  => 'root',
		group  => 'root',
		mode   => '0640',
		source => "puppet:///files/master_id_rsa.pub",
	}
	file {'/root/.ssh':
	        ensure => directory,
		owner  => 'root',
		group  => 'root',			
		mode   => '0700',
	}
									        }
	service {'sshd':
		ensure => running,
	}
	
}


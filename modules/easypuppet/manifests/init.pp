class easypuppet {
	file {'/usr/local/bin/easypuppet.sh':
		ensure => file,
		owner  => 'root',
		group  => 'root',
		mode   => '0755',
		content=> "#!/bin/bash\npuppet agent --verbose --no-daemonize --onetime $1"
	}
}

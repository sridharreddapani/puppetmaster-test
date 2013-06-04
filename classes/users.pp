class user {
	group {'admin':
		ensure => present,
		gid => 1000,
	}	
			
	user {'sridhar':
		ensure => present,
		uid    => 501,
		gid    => '501'
		groups => 'admin',
	}
	user {'user01':
		ensure => present,
                uid    => 502,
		gid    => 502,
		groups => 'admin',
        }
}


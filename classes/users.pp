class user {
	group {'admin':
		ensure => present,
		gid => 1000,
	}	
			
	user {'sridhar':
		ensure => present,
		uid    => 501,
		gid    => 'admin',
	}
	user {'user01':
		ensure => present,
                uid    => 502,
		gid    => 'admin',
        }
}


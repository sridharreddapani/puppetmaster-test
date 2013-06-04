class user {
	user {'sridhar':
		ensure => present,
		uid    => 501,
	}
	user {'user01':
		ensure => present,
                uid    => 502,
        }
}

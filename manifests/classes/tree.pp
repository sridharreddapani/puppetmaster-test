package {'tree':
	ensure => installed,
}
notify {"Hello Agent tree is completed": 
	message => "apche config file from apche class is ${apche::apache_conf}"
}
#notify {'bignote':
#	message => 'Hello this is going to test notifu with meassage',
#}

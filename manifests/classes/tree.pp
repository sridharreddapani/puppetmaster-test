package {'tree':
	ensure => installed,
}
notify {"Hello Agent tree is completed": }
notify {'bignote':
	message => 'Hello this is going to test notifu with meassage',
}

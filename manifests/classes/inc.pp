#include easypuppet
#include user
#include apache
#include ssh
class{"easypuppet":}
class{"user":}
class{"apache":}
class{"ssh":}
notify {'varcheck':
#	message => "Apache Config From Apache Class: ${::apache::apache_conf}",
	message => "Apache Config From Apache Class: ${apache::apache_conf}",
}

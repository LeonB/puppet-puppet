class puppet::master::package inherits puppet::package {

	package { 'puppetmaster':
		ensure  => present,
		# require => Apt::Source['puppetlabs']
	}

	package { 'ruby-sqlite3':
		ensure  => present
	}

}

class puppet::client::package inherits puppet::package {

	package { "${puppet::client::package_name}":
		ensure  => present,
		require => Apt::Source['puppetlabs']
	}

	package { 'libaugeas-ruby':
		ensure => present,
	}

	# package { 'ruby-activerecord': # needed for stored resources
	# 	ensure  => present
	# }

}

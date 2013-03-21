class puppet::master::config inherits puppet::config {

	concat::fragment { 'puppet.conf-master':
		order  => '05',
		target => "/etc/puppet/puppet.conf",
		source => "puppet:///modules/puppet/puppet.conf-master",
		require => Class["puppet::master::package"],
		notify  => Class["puppet::master::service"]
	}

	file { '/etc/puppet/autosign.conf':
		content => '',
		require => Class["puppet::master::package"],
		notify  => Class["puppet::master::service"]
	}
}

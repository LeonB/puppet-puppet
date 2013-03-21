class puppet::config {

	file { '/etc/puppet/':
		owner => puppet,
		group => puppet,
		mode => 0606,
		recurse => true
	}

	file { '/etc/puppet/etckeeper-commit-post':
		mode => 0700,
	}

	file { '/etc/puppet/etckeeper-commit-pre':
		mode => 0700,
	}

	file { '/etc/puppet/files/':
		ensure => directory
	}

	concat{ '/etc/puppet/puppet.conf':
		owner   => puppet,
		group   => puppet,
		mode    => 0606,
		require => Class["puppet::package"],
		notify  => Class["puppet::service"],
	}

	concat::fragment { 'puppet.conf-common':
		order  => '01',
		target => "/etc/puppet/puppet.conf",
		source => "puppet:///modules/puppet/puppet.conf-common",
	}

}

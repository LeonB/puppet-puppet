class puppet::master::service inherits puppet::service {

	service { 'puppetmaster':
		ensure     => running,
		hasstatus  => true,
		hasrestart => true,
		enable     => true,
		require    => Class['puppet::master::package'],
		subscribe  => File['/etc/puppet/puppet.conf']
	}

}

class puppet::client::service inherits puppet::service {

	service { 'puppet':
		ensure     => stopped,
		hasstatus  => true,
		hasrestart => true,
		enable     => true,
		require    => Class['puppet::package'],
		subscribe  => File['/etc/puppet/puppet.conf']
	}

}

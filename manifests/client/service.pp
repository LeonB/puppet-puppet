class puppet::client::service inherits puppet::service {

	service { 'puppet':
		ensure     => stopped,
		hasstatus  => true,
		hasrestart => true,
		enable     => false, # don't start on boot
		require    => Class['puppet::package'],
		subscribe  => File['/etc/puppet/puppet.conf']
	}

}

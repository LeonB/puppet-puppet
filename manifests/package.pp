class puppet::package {

	$ensure = $::architecture ? {
		default  => 'present',
		'armv7l' => 'absent'
	}

	# The Puppet Labs APT source and gpg key.
	apt::source { 'puppetlabs':
		ensure     => $puppet::ensure,
		location   => 'http://apt.puppetlabs.com',
		release    => $puppet::repository_release,
		repos      => 'main',
		key        => '4BD6EC30',
		key_server => 'pgp.mit.edu'
	}

}

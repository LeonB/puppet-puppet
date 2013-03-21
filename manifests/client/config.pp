class puppet::client::config inherits puppet::config {

	augeas { "/etc/default/puppet":
		context => '/files/etc/default/puppet',
		changes => [
			"set START no",
		],
	}

}

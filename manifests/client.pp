# puppet agent --waitforcert 60 --test
# puppet cert --list
# puppet cert --sign puppetclient-37.domain.net

class puppet::client(
	$package_name = params_lookup( 'package_name' ),
	$repository_release = params_lookup('repository_release')
) inherits puppet::client::params {

  include puppet::client::package, puppet::client::config, puppet::client::service
}

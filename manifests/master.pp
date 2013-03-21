class puppet::master(
	$package_name = params_lookup( 'package_name' )
) inherits puppet::master::params {

  include puppet::master::package, puppet::master::config, puppet::master::service
}

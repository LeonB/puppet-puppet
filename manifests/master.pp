class puppet::master(
	$package_name = params_lookup( 'packages' )
) inherits puppet::master::params {

    include puppet

    # Depend on puppet base class
    Class['puppet'] -> Class['puppet::client']

  include puppet::master::package, puppet::master::config, puppet::master::service
}

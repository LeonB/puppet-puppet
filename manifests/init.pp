class puppet(
    $packages = params_lookup( 'packages' ),
    $enabled  = params_lookup( 'enabled' ),
    $user     = params_lookup( 'user' )
) inherits puppet::params {

    $ensure = $enabled ? {
        true => present,
        false => absent
    }

    include puppet::package, puppet::config, puppet::service
}

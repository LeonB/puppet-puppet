# Class: puppet::client::params
#
# This class defines default parameters used by the main module class puppet
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to puppet class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class puppet::client::params {

  ### Application related parameters

  $package_name = $::operatingsystem ? {
    default => 'puppet'
  }

  $repository_release = $lsbdistcodename
}

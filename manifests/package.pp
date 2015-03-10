# Class: bind::package
# 
# From https://github.com/thias/puppet-bind/
#
class bind::package (
  $package_name = $::bind::params::package_name,
) inherits ::bind::params {

  package { $package_name : ensure => installed }

}

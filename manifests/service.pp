# Class: bind::service
#
class bind::service (
  $service_name    = $::bind::params::service_name,
  $service_restart = $::bind::params::manage_service,
) inherits ::bind::params {

  if $service_restart {
    Service[$service_name] {
      restart => $::bind::params::service_restart,
    }
  }

  service { $service_name :
    require   => Class['::bind::package'],
    hasstatus => true,
    enable    => true,
    ensure    => running,
  }
  
}

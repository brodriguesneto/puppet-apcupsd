class apcupsd::params {
  $ensure = 'present'
  $autoupgrade = false
  $email = undef
  $upscable = undef
  $upstype = undef
  $device = undef
  $devtty = undef
  $host = undef
  $snmp = true
  $port = undef
  $vendor = undef
  $community = undef
  $onbatterydelay = '6'
  $batterylevel = '5'
  $minutes = '3'

  case $::operatingsystem {
    'Ubuntu' : {
      case $::lsbdistrelease {
        /(10.04|12.04|14.04)/ : {
          $package_name = 'apcupsd'
          $package_extras = ['apcupsd-cgi', 'apcupsd-doc',]
          $service_name = 'apcupsd'
        }
        default               : {
          case $::lsbdistrelease {
            default : { fail("Unsupported Ubuntu suite: ${::lsbdistrelease}") }
          }
        }
      }
    }
    default  : {
      case $::operatingsystem {
        default : { fail("Unsupported operating system: ${::operatingsystem}") }
      }
    }
  }

  case $ensure {
    /(present)/ : {
      if $autoupgrade == true {
        $package_ensure = 'latest'
      } else {
        $package_ensure = 'present'
      }
    }
    /(absent)/  : {
      $package_ensure = 'absent'
    }
    default     : {
      fail('ensure parameter must be present or absent')
    }
  }
}

define apcupsd::script ($conf = $title, $email = $apcupsd::email, $host_name = $::hostname) {
  file { "/etc/apcupsd/${conf}":
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => 0755,
    content => template("apcupsd/${conf}.erb"),
    require => Package[$apcupsd::params::package_name],
    notify  => Service[$apcupsd::params::service_name],
  }
}
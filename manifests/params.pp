class apcupsd::params {
  case $::operatingsystem {
    'Ubuntu' : {
      case $::lsbdistrelease {
        /(12.04|14.04)/ : {
          $package        = 'apcupsd'
          $packages_extra = ['apcupsd-cgi', 'apcupsd-doc',]
          $service        = 'apcupsd'
        }
        default         : {
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
}

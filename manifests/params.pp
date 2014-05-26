class apcupsd::params(
  $ensure = 'present',
  $autoupgrade = false,
){

  case $::operatingsystem {
    'Ubuntu': {
      case $::lsbdistrelease {
        /(10.04|12.04|14.04)/: {
          $package_name = ['apcupsd', 'apcupsd-cgi',]
        }
        default: {
          case $::lsbdistrelease {
            default: {
              fail("Unsupported Ubuntu suite: ${::lsbdistrelease}")
            }
          }
        }
      }
    }
   default: {
        case $::operatingsystem {
          default: {
            fail("Unsupported operating system: ${::operatingsystem}")
          }
        }
      }
    }

   case $ensure {
    /(present)/: {
      if $autoupgrade == true {
        $package_ensure = 'latest'
      }
      else {
        $package_ensure = 'present'
      }
    }
    /(absent)/: {
      $package_ensure = 'absent'
    }
    default: {
        fail('ensure parameter must be present or absent')
   }
 }
}
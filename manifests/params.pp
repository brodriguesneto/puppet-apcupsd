class apcupsd::params {

  case $::operatingsystem {
    'Ubuntu': {
      case #::lsbdistrelease {
        '/(^14.04|12.04)$/': {
           $package = ['apcupsd', 'apcupsd-cgi']
        }
        default: {
          fail("Unsupported lsbdistrelease: $1")
        }
    } 
    default: {
      fail("Unsupported operating system: $1")
    }
  }

  case $ensure {
    /(present)/: {
      if $autoupgrade == true {
        $package_ensure = 'latest'
      } else {
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

# Class: apcupsd
#
# This module manages apcupsd
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class apcupsd (
  $ensure              = 'present',
  $autoupgrade         = false,
  $mailto              = 'root@localhost',
  $pre_shutdown        = true,
  $pre_shutdown_script = '/usr/local/sbin/pre_halt_script.sh',
  $onbatterydelay      = 5,
  $batterylevel        = 30,
  $minutes             = 20,) inherits apcupsd::params {
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

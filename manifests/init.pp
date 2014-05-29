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
  $ensure         = 'present',
  $autoupgrade    = false,
  $mailto         = undef,
  $upscable       = undef,
  $devtty         = undef,
  $host           = undef,
  $port           = undef,
  $snmp           = false,
  $vendor         = undef,
  $community      = undef,
  $onbatterydelay = undef,
  $batterylevel   = undef,
  $minutes        = undef,) inherits apcupsd::params {
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
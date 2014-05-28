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
  $upscable       = 'usb',
  $onbatterydelay = '10',
  $batterylevel   = '30',
  $minutes        = '20',) inherits apcupsd::params {
  include apcupsd::install, apcupsd::config, apcupsd::service

  Class['apcupsd::install'] -> Class['apcupsd::config'] ~> Class['apcupsd::service']

}
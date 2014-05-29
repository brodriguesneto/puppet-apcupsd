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
  $ensure         = 'absent',
  $autoupgrade    = false,
  $email          = 'root@example.com.br',
  $upscable       = 'ether',
  $upstype        = undef,
  $device         = undef,
  $devtty         = '/dev/ttyS0',
  $host           = 'localhost',
  $snmp           = true,
  $port           = '161',
  $vendor         = 'apc',
  $community      = 'public',
  $onbatterydelay = '10',
  $batterylevel   = '30', 
  $minutes        = '20',) inherits apcupsd::params {
  include apcupsd::install, apcupsd::config, apcupsd::service

  Class['apcupsd::install'] -> Class['apcupsd::config'] ~> Class['apcupsd::service']
}
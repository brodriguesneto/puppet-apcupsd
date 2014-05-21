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
class apcupsd {
  $ensure = 'present',
  $autoupgrade = false,
  $package = $apcupsd::params::package,
  $package_ensure = $apcupsd::params::package_ensure,
  
  include apcupsd::install, apcupsd::config, apcupsd::service

} inherits apcupsd::params

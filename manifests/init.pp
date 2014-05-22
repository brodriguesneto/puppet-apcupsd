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
class apcupsd{
  
  include apcupsd::params, apcupsd::install, apcupsd::config, apcupsd::service

}
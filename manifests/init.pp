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
class apcupsd inherits apcupsd::params {
  include apcupsd::install, apcupsd::config, apcupsd::service
}

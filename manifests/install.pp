class apcupsd::install {
  package { [$apcupsd::params::package_name, $apcupsd::params::package_extras]: ensure => $apcupsd::package_ensure, }
}

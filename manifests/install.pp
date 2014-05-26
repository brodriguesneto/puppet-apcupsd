class apcupsd::install {
  package { $apcupsd::params::package_name: ensure => $apcupsd::params::package_ensure, }
}

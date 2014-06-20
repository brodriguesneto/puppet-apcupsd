class apcupsd::install {
  package { [$apcupsd::params::package, $apcupsd::params::packages_extra]:
    ensure => $apcupsd::package_ensure,
  }
}

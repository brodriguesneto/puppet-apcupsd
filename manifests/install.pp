class apcupsd::install{

  package { $package :
    ensure => $package_ensure
  }
}

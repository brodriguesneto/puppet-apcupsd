class apcupsd::service {
  service { $apcupsd::params::service:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require    => Class['apcupsd::config'],
  }
}

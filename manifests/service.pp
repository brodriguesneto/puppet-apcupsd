class apcupsd::service {
  service { $apcupsd::params::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require    => Class["apcupsd::config"],
  }
}

class apcupsd::config {
  file { '/etc/apcupsd/apcupsd.conf':
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("${module_name}/apcupsd.conf.erb"),
    require => Package[$apcupsd::params::package],
    notify  => Service[$apcupsd::params::service],
  }

  file { '/etc/default/apcupsd':
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("${module_name}/apcupsd.default.erb"),
    require => Package[$apcupsd::params::package],
    notify  => Service[$apcupsd::params::service],
  }

  apcupsd::apc_script { 'apccontrol': }

  apcupsd::apc_script { 'changeme': }

  apcupsd::apc_script { 'commfailure': }

  apcupsd::apc_script { 'commok': }

  apcupsd::apc_script { 'offbattery': }

  apcupsd::apc_script { 'onbattery': }
}

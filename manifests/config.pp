class apcupsd::config {
  file { '/etc/apcupsd/apcupsd.conf':
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => template('apcupsd/apcupsd.conf.erb'),
    require => Package[$apcupsd::params::package_name],
    notify  => Service[$apcupsd::params::service_name],
  }

  file { '/etc/default/apcupsd':
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => template('apcupsd/apcupsd.default.erb'),
    require => Package[$apcupsd::params::package_name],
    notify  => Service[$apcupsd::params::service_name],
  }

  define apc_script ($conf = $title,) {
    file { "/etc/apcupsd/${conf}":
      ensure  => 'file',
      owner   => 'root',
      group   => 'root',
      mode    => 0755,
      content => template("apcupsd/${conf}.erb"),
      require => Package[$apcupsd::params::package_name],
      notify  => Service[$apcupsd::params::service_name],
    }
  }

  apc_script { 'apccontrol': }

  apc_script { 'changeme': }

  apc_script { 'commfailure': }

  apc_script { 'commok': }

  apc_script { 'offbattery': }

  apc_script { 'onbattery': }
}

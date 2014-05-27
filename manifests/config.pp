class apcupsd::config {
  file { '/etc/apcupsd/apcupsd.conf':
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => template('apcupsd/apcupsd.conf.erb'),
    require => Package["$apcupsd::params::package_name"],
    notify  => Service["$apcupsd::params::service_name"],
  }

  apcupsd::script { 'changeme': }

  apcupsd::script { 'commfailure': }

  apcupsd::script { 'commok': }

  apcupsd::script { 'offbattery': }

  apcupsd::script { 'onbattery': }
}
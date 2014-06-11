define apcupsd::apc_script ($conf = $title,) {
  file { "/etc/apcupsd/${conf}":
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    content => template("apcupsd/${conf}.erb"),
    require => Package[$apcupsd::params::package_name],
    notify  => Service[$apcupsd::params::service_name],
  }
}

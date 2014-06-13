define apcupsd::apc_script ($conf = $title,) {
  file { "/etc/apcupsd/${conf}":
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    content => template("${module_name}/${conf}.erb"),
    require => Package[$apcupsd::params::package],
    notify  => Service[$apcupsd::params::service],
  }
}

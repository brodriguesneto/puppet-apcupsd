class apcupsd::slave (
  $upscable = 'ether',
  $port     = 3551,
  $host     = '127.0.0.1',) inherits apcupsd {
  include apcupsd::install, apcupsd::config, apcupsd::service
  Class['apcupsd::install'] -> Class['apcupsd::config'] ~> Class['apcupsd::service']
}

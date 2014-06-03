class apcupsd::smart (
  $upscable = 'smart',
  $devtty   = '/dev/ttyS0',) inherits apcupsd {
  include apcupsd::install, apcupsd::config, apcupsd::service
  Class['apcupsd::install'] -> Class['apcupsd::config'] ~> Class['apcupsd::service']
}

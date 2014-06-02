class apcupsd::smart (
  $upscable       = 'smart',
  $devtty         = '/dev/ttyS0',
  $mailto         = 'root@example.com.br',
  $pre_shutdown   = true,
  $onbatterydelay = 10,
  $batterylevel   = 30,
  $minutes        = 20,) inherits apcupsd {
  include apcupsd::install, apcupsd::config, apcupsd::service
  Class['apcupsd::install'] -> Class['apcupsd::config'] ~> Class['apcupsd::service']
}

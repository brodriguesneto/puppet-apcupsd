define apcupsd::smart (
  $upscable       = 'smart',
  $devtty         = '/dev/ttyS0',
  $mailto         = 'root@example.com.br',
  $onbatterydelay = 10,
  $batterylevel   = 30,
  $minutes        = 20,) {
  include apcupsd
  Class['apcupsd::install'] -> Class['apcupsd::config'] ~> Class['apcupsd::service']
}

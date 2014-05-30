class apcupsd::usb inherits apcupsd {
  $upscable       = 'usb'
  $mailto         = 'root@example.com.br'
  $onbatterydelay = 10
  $batterylevel   = 30
  $minutes        = 20
  include apcupsd::install, apcupsd::config, apcupsd::service
  Class['apcupsd::install'] -> Class['apcupsd::config'] ~> Class['apcupsd::service']
}

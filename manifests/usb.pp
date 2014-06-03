class apcupsd::usb (
  $upscable       = 'usb',
  $mailto         = 'root@exemple.com',
  $pre_shutdown   = true,
  $onbatterydelay = 10,
  $batterylevel   = 30,
  $minutes        = 20,) inherits apcupsd {
  include apcupsd::install, apcupsd::config, apcupsd::service
  Class['apcupsd::install'] -> Class['apcupsd::config'] ~> Class['apcupsd::service']
}

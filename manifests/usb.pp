define apcupsd::usb ($upscable, $mailto, $onbatterydelay, $batterylevel, $minutes,) {
  include apcupsd
  Class['apcupsd::install'] -> Class['apcupsd::config'] ~> Class['apcupsd::service']
}

class apcupsd::slave (
  $upscable       = 'ether',
  $port           = 3551,
  $host           = '127.0.0.1',
  $mailto         = 'root@example.com.br',
  $onbatterydelay = 10,
  $batterylevel   = 30,
  $minutes        = 20,) {
  include apcupsd
  Class['apcupsd::install'] -> Class['apcupsd::config'] ~> Class['apcupsd::service']
}

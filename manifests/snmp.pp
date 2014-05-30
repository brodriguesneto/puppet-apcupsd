class apcupsd::snmp (
  $upscable       = 'ether',
  $snmp           = true,
  $port           = 161,
  $host           = '127.0.0.1',
  $vendor         = 'apc',
  $community      = 'public',
  $mailto         = 'root@example.com.br',
  $onbatterydelay = 10,
  $batterylevel   = 30,
  $minutes        = 20,) {
  include apcupsd
  Class['apcupsd::install'] -> Class['apcupsd::config'] ~> Class['apcupsd::service']
}

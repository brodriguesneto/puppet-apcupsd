class apcupsd::config {
  apcupsd::config {'apcupsd.conf': }
  
  apcupsd::script { 'changeme': }

  apcupsd::script { 'commfailure': }

  apcupsd::script { 'commok': }

  apcupsd::script { 'offbattery': }

  apcupsd::script { 'onbattery': }
}
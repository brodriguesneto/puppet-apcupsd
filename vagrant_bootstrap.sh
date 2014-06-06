#!/bin/sh
/usr/bin/aptitude update 2>/dev/null
/usr/bin/aptitude upgrade 2>/dev/null
/usr/bin/aptitude -y install vim puppet-lint git 2>/dev/null
/bin/ln -s /vagrant /etc/puppet/modules/apcupsd

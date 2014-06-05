#!/bin/sh
/usr/bin/aptitude update
/usr/bin/aptitude upgrade
/usr/bin/aptitude -y install vim puppet-lint
/bin/ln -s /vagrant /etc/puppet/modules/apcupsd

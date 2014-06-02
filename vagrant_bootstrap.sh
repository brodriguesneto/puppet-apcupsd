#!/usr/bin/env bash

aptitude update
aptitude upgrade
aptitude -y install  puppetmaster puppet-lint ruby2.0 ruby2.0-doc vim
ln -s /vagrant /etc/puppet/modules/apcupsd

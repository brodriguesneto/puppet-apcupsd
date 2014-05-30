#!/usr/bin/env bash

aptitude update
aptitude upgrade
aptitude install puppet puppet-lint ruby2.0 ruby2.0-doc

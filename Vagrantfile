# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.require_version ">= 1.5.0"
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box              = "ubuntu/trusty64"
  config.vm.box_check_update = true
  config.vm.hostname         = "apcupsd"
  config.ssh.forward_agent   = true
  config.vm.provision        :shell, path: "vagrant_bootstrap.sh"
end

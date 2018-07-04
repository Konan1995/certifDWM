# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"
  config.vm.synced_folder "./data", "/var/www/html"
  config.vm.network "private_network", ip: "192.168.90.91"

  config.vm.provision "shell", path: "provision/install.sh"
end
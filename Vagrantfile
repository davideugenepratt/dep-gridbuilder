# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"

  config.vm.network "private_network", ip: "192.168.13.13"

  config.vm.provider "virtualbox" do |vb|

     vb.memory = "1024"

  end

  config.vm.provision "shell", path: "vagrant/provision/node.sh"

end

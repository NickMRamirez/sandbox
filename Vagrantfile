# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

  config.vm.define "windows1" do |machine|
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
    machine.vm.box = "nramirez/windows10eval"
	machine.vm.network "private_network", ip: "10.0.0.2"
  end
  
  config.vm.define "linux1" do |machine|
    machine.vm.box = "gbarbieru/xenial"
	machine.vm.network "private_network", ip: "10.0.0.3"
  end

end

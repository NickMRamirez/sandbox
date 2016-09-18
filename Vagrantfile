# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "linux1" do |machine|
    machine.vm.box = "gbarbieru/xenial"
    machine.vm.network "private_network", type: "dhcp"
	machine.vm.hostname = "linux1"
  end
  
  config.vm.define "nano" do |machine|
    machine.vm.box = "nramirez/nanoserver"
    machine.vm.network "private_network", type: "dhcp"
    machine.vm.hostname = "nano"
  end
  
  config.vm.define "win2012r2" do |machine|
    machine.vm.box = "kensykora/windows_2012_r2_standard"
	machine.vm.network "private_network", type: "dhcp"
	machine.vm.hostname = "win2012r2"
  end

end

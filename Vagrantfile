# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
	# Install puppet using bootstrap bash script
	config.vm.provision :shell, :path => "bootstrap.sh"
	# Create the offline local development server
	config.vm.define :development do |www|
	# VirtualBox Specific Customization
		www.vm.provider :virtualbox do |vb|
			# Use VBoxManage to customize the VM. For example to change memory:
			vb.customize ["modifyvm", :id, "--memory", "1024"]
		end
		www.vm.box = "bento/ubuntu-16.04"
		www.vm.hostname = "development.eventapp.vm"
		www.vm.network :private_network, ip: "192.168.33.50"
		www.vm.network :forwarded_port, guest: 80, host: 8090
		# Sinc the host folder app with the guest foldder /vavr/www/app
		www.vm.synced_folder "app", "/var/www/app"
	end
	# Change mirror to au mirror. This can make it faster, but I was having some issues being forbidden from some parts.
	# config.vm.provision :shell, :inline => "sed -i 's/us.archive/au.archive/g' /etc/apt/sources.list"
	
	# Use puppet to provision the vm.
	config.vm.provision :puppet do |puppet|
		puppet.manifests_path = "puppet/manifests"
		puppet.manifest_file  = "site.pp"
		puppet.module_path = "puppet/modules"
		puppet.options = "--verbose --debug"
	end 
end
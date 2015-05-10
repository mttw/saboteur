# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.vm.define "buildbox" do |host|
        host.vm.hostname = "buildbox"
        host.vm.box = "centos64"
        host.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v0.1.0/centos64-x86_64-20131030.box"

        host.vm.network :private_network, ip: "192.168.2.199"

        host.vm.synced_folder ".", "/mnt/saboteur"

        host.vm.provider :virtualbox do |vb|
           vb.customize ["modifyvm", :id, "--memory", "512"]
        end

        host.vm.provision "shell", path: "buildbox/provision-build-vm.sh"
    end

    config.vm.define "trusty64" do |host|
        host.vm.hostname = "trusty64"
        host.vm.box = "ubuntu/trusty64"

        host.vm.network :private_network, ip: "192.168.2.201"

        host.vm.synced_folder ".", "/mnt/saboteur"

        host.vm.provider :virtualbox do |vb|
           vb.customize ["modifyvm", :id, "--memory", "256"]
        end
    end

    config.vm.define "fedora20" do |host|
        host.vm.hostname = "fedora20"
        host.vm.box = "fedora20"
        host.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_fedora-20_chef-provisionerless.box"

        host.vm.network :private_network, ip: "192.168.2.202"

        host.vm.synced_folder ".", "/mnt/saboteur"

        host.vm.provider :virtualbox do |vb|
           vb.customize ["modifyvm", :id, "--memory", "256"]
        end
    end
end

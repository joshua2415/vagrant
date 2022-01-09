# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
   config.vm.box = "ubuntu/focal64"
   config.vm.network "forwarded_port", guest: 443, host: 443
   config.vm.network "forwarded_port", guest: 3306, host: 3306
   config.vm.network "forwarded_port", guest: 15672, host: 15672
   config.vm.network "forwarded_port", guest: 5672, host: 5672
   config.vm.network "forwarded_port", guest: 3333, host: 3333
   config.vm.network "forwarded_port", guest: 2222, host: 2222
   #config.vm.network "forwarded_port", guest: 2222, host: 2222
     # Manage /etc/hosts on host and VMs
   config.hostmanager.enabled = false
   config.hostmanager.manage_host = true
   config.hostmanager.include_offline = true
   config.hostmanager.ignore_private_ip = false
 
   config.vm.define :pro do |pro|
    pro.vm.provider :virtualbox do |v|
         v.name = "pro"
         v.customize ["modifyvm", :id, "--memory", "8192"]
       end
       pro.vm.network :private_network, ip: "192.168.57.121"
       pro.vm.hostname = "pro"
   end
 
   
   ############################################################
   # Oh My ZSH Install section
   # Install git and zsh prerequisites 
   config.vm.provision :shell, path: "./install.sh"
   # Clone Oh My Zsh from the git repoexit
   #config.vm.provision :shell, privileged: false, path: "./zshconf.sh"
   # Change the vagrant user's shell to use zsh
   #config.vm.provision :shell, inline: "chsh -s /bin/zsh vagrant"
 
   ############################################################
end

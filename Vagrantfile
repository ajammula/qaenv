# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::configure("2") do |config|
  #config.vm.box = "macbeth76/ubuntu-base"
  #config.vm.box_url = "https://vagrantcloud.com/macbeth76/boxes/ubuntu-base"

  config.vm.box = "janihur/ubuntu-1404-desktop"
  config.vm.box_url = "https://vagrantcloud.com/janihur/ubuntu-1404-desktop"

 config.vm.provider "virtualbox" do |vb|
    vb.gui = true
  end

 config.omnibus.chef_version = :latest 

 config.vm.provision :chef_solo do |chef| 
 
    chef.cookbooks_path = ["cookbooks" ]

    chef.add_recipe ("apt")   
    chef.add_recipe ("git")
    chef.add_recipe ("yum")
    chef.add_recipe "build-essential"
    chef.add_recipe "ruby_build"
    chef.add_recipe "rbenv::vagrant"
    chef.add_recipe "rbenv::user"

    chef.json = {
      'rbenv' => {
        'user_installs' => [
          {
            'user'    => 'vagrant',
            'rubies'  => ['2.1.2'],
            'global'  => '2.1.2',
            'gems'    => {
              '2.1.2' => [
                { 'name'    => 'bundler' },
                { 'name'    => 'rails' },
                { 'name'    => 'haml' }
              ]
            }
          }
        ]
        }
      }
  end

 config.vm.provision :shell, :path => "sample.sh"
end

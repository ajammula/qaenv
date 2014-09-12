#!/bin/sh

  echo ''
  echo 'INSTALLING'
  echo '----------'
  
  #Installing Ubuntu desktop
  sudo apt-get update
  sudo apt-get -y install ubuntu-desktop

  # Installing Curl and RVM
  #sudo apt-get -y install curl
#\curl -L https://get.rvm.io | bash -s stable --ruby
# source ~/.rvm/scripts/rvm
# rvm requirements
# # Installing Ruby
# rvm reinstall ruby-2.1.2
# rvm use ruby --default
# sudo apt-get -y install rubygems
# sudo gem install rubygems-update
 #sudo apt-get -y install libopenssl-ruby
  # Installing Cucumber
#  sudo apt-get update
 sudo gem install cucumber
 sudo gem install selenium-webdriver

  #Installing Firefox 
  sudo apt-get update
  sudo apt-get -y install firefox

  #Installing Java
  wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_java7_64.sh && bash equip_java7_64.sh
   
  #Installing Selenium server
  wget "http://selenium-release.storage.googleapis.com/2.42/selenium-server-standalone-2.42.2.jar"
  sudo mv selenium-server-standalone-2.42.2.jar /usr/local/bin
  cd /home/vagrant
  java -jar ./selenium-server-standalone-2.42.2.jar &


 
 
  


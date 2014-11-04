#!/bin/sh

  echo ''
  echo 'INSTALLING'
  echo '----------'
  
  #Installing Ubuntu desktop
  sudo apt-get update
  #sudo apt-get -y install ubuntu-desktop

  #Installing Firefox 
  sudo apt-get update
  sudo apt-get -y install firefox

  #Installing Java
#  wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_java7_64.sh && bash equip_java7_64.sh
   sudo apt-get install default-jre
   sudo apt-get install default-jdk

  #Installing Selenium server
#  cd ~/
#  wget "http://selenium-release.storage.googleapis.com/2.42/selenium-server-standalone-2.42.2.jar"
#  sudo mv selenium-server-standalone-2.42.2.jar ~/

#  java -jar ./selenium-server-standalone-2.42.2.jar &

 #Installing Eclipse
  wget --no-check-certificate https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/luna/R/eclipse-standard-luna-R-linux-gtk-x86_64.tar.gz&mirror_id=272lol





 
  


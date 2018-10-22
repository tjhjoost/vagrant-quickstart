#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt-get install nano git openjdk-7-jdk openjdk-7-jre-headless -y

cd /usr/local
wget http://apache.mirror.ipcheck.nu/tomcat/tomcat-8/v8.5.34/bin/apache-tomcat-8.5.34.tar.gz
tar -xzvf apache-tomcat-8.5.34.tar.gz
ln -s apache-tomcat-8.5.34 tomcat

cp /vagrant/tomcat8 /etc/init.d/tomcat8
chmod 755 /etc/init.d/tomcat8
update-rc.d tomcat8 defaults
service tomcat8 start

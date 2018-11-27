#!/bin/bash
# Script to install Nagios

# Call the base config
/bin/bash ../Baseconfig/baseconfig.sh

# Install Prerequisiites 
yum install httpd php php-cli gcc glibc glibc-common gd gd-devel net-snmp openssl-devel wget unzip -y

# create a nagois user
useradd nagios
groupadd nagcmd
usermod -a -G nagcmd nagios
usermod -a -G nagcmd apache

cd /tmp
wget https://assets.nagios.com/downloads/nagioscore/releases/nagios-4.1.1.tar.gz
wget http://www.nagios-plugins.org/download/nagios-plugins-2.1.1.tar.gz
tar zxf nagios-4.1.1.tar.gz
tar zxf nagios-plugins-2.1.1.tar.gz
cd nagios-4.1.1

./configure --with-command-group=nagcmd
make all
make install
make install-init
make install-config
make install-commandmode
make install-webconf

# Creating a password for nagiosadmin for the web login
htpasswd -c /usr/local/nagios/etc/htpasswd.users nagiosadmin

# Installing nagios plugins
cd /tmp/nagios-plugins-2.1.1
./configure --with-nagios-user=nagios --with-nagios-group=nagios --with-openssl
make all
make install

# Start Nagios 
systemctl start httpd
systemctl start nagios
systemctl enable nagios
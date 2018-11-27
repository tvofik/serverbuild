#!/bin/bash
# script to install Java jdk 1.8, Install python-3.6.4

# Call the base config script
/bin/bash ../Baseconfig/baseconfig.sh

# Install Epel repo
sudo yum install -y epel-release
sudo yum install -y https://centos7.iuscommunity.org/ius-release.rpm

# Install Python and Java
sudo yum install -y python36u java-1.8.0-openjdk
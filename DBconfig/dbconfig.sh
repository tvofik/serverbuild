#!/bin/bash
# Set up MySQL DB

# Call the base config
/bin/bash ./Baseconfig/baseconfig.sh

# Install DB
sudo yum install mariadb-server mariadb

# Start the DB Service
sudo systemctl start mariadb

sudo mysql_secure_installation

# Enable the sevice
sudo systemctl enable mariadb.service
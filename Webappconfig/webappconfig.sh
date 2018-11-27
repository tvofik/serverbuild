#!/bin/bash
# Script to create an admin user

# Call the base config
/bin/bash ./Baseconfig/baseconfig.sh

# Update 
sudo yum update -y

# Install Apache webserver
sudo yum install httpd -y

# Start Apache Webserver
systemctl start httpd

# Enable Apache Webserver
systemctl enable httpd 
#!/bin/bash
# Script to create an admin user

# Create an admin user
useradd admin

# log in into the admin user
su - admin

# Setting up SSH key for admin user
ssh-keygen

# Exit the admin user
exit

# Passwd for admin user 
passwd admin

# Update  
sudo yum update -y
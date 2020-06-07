#!/bin/bash

# Updates the server
sudo apt update && sudo apt upgrade -y

# Install java
sudo apt install default-jdk-headless -y

# Test java installation
java -version

# Install wget
sudo apt install wget gnupg2 -y

# Add Jenkins repo keys
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

# Add Jenkins repo
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Add universe repo to get some dependencies
sudo add-apt-repository universe

# Updates package list
sudo apt-get update

# Install jenkins
sudo apt-get install jenkins -y
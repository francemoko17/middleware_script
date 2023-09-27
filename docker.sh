#!/bin/bash

# Update the system
sudo yum update -y

# Install required dependencies
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Add Docker CE repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker CE
sudo yum install -y docker-ce

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker
# Add the current user to the "docker" group to run Docker commands without sudo
sudo usermod -aG docker $USER

# Print Docker version
docker --version

# Clean up
sudo yum clean all

echo "Docker CE is installed and configured. You may need to log out and log back in for the group changes to take effect."

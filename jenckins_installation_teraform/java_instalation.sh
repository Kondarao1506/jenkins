#!/bin/bash
#junckins installation
#java installation

# sudo curl -o /etc/yum.repos.d/jenkins.repo \
#     https://pkg.jenkins.io/redhat-stable/jenkins.repo
# sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
#sudo yum upgrade
# Add required dependencies for the jenkins package
sudo yum install fontconfig java-21-openjdk -y
# sudo yum install jenkins -y
# sudo systemctl daemon-reload
# sudo systemctl start jenkins
# sudo systemctl enable jenkins
sudo dnf module disable nodejs -y

sudo dnf module enable nodejs:20 -y

sudo dnf install nodejs -y

# docker installation


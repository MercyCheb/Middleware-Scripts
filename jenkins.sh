#!bin/bash
# Author:Mercy Chebiego
# Date: March 2022
# Description: Script to Install Jenkins on a CentOS 7 Server

yum install java-1.8.0-openjdk-devel
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo 
yum install wget -y
sed -i 's/gpgcheck=1/gpgcheck=0/g' /etc/yum.repos.d/jenkins.repo
yum install jenkins
systemctl start jenkins 
systemctl status jenkins
systemctl enable jenkins 
firewall-cmd --permanent --zone=public --add-port=8080/tcp 
firewall-cmd --reload
# http://your_ip_or_domain:8080 

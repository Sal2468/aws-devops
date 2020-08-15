#!/bin/bash
yum update -y
#STEP-1: install httpd(apache) service
yum install httpd -y
#STEP -B: Start httpd service 
service httpd start
#STEP-2: if not exist install wget
#yum install wget -y
#STEP-3: enable the service
chkconfig httpd on #sudo systemctl enable httpd.service
#STEP-4: download content to host
cd /var/www/html
wget https://raw.githubusercontent.com/awsdevopsteam/route-53-2/master/index.html
wget https://raw.githubusercontent.com/awsdevopsteam/route-53-2/master/ryu.jpg
#STEP-5: start the service
service httpd start

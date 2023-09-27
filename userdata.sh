#!/bin/bash
sudo yum update -y
sudo yum update httpd -y
sudo yum install httpd wget unzip -y
sudo systemctl start httpd
sudo systemctl enable httpd
wget https://www.tooplate.com/zip-templates/2137_barista_cafe.zip
unzip 2137_barista_cafe.zip
sudo cp -r 2137_barista_cafe/* /var/www/html/
sudo systemctl restart httpd 

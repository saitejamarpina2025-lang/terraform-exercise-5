#!/bin/bash

sudo yum update -y

sudo yum install -y wget unzip net-tools figlet httpd

sudo systemctl start httpd

sudo systemctl enable httpd

mkdir -p webfiles

cd webfiles

sudo wget https://www.tooplate.com/zip-templates/2118_chilling_cafe.zip

sudo unzip -o 2118_chilling_cafe.zip

sudo rm -rf /var/www/html/*

sudo cp -r 2165-neon-carbon/* /var/www/html/

cd ..

sudo rm -rf webfiles

sudo systemctl restart httpd

figlet done

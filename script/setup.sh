#!/bin/bash
# Install Apache
sudo apt install apache2

# Enable necessary modules
sudo a2enmod mime

cd /var/www/html
git clone https://github.com/SagnikDas-afk/Automated-Static-Website-Deployment-via-Apache.git
 
# Set Permissions
sudo chown -R $USER:$USER /var/www/html/Automated-Static-Website-Deployment-via-Apache/
sudo chmod -R 755 /var/www/html/Automated-Static-Website-Deployment-via-Apache/

sudo apache2ctl configtest

# Reload Server
if [ $? -eq 0 ]; then
    sudo systemctl reload apache2
    echo "Deployment Successful!"
else
    echo "Deployment Failed: Syntax Error"
    exit 1
fi

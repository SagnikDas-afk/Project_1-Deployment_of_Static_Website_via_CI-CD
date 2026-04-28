#!/bin/bash
# Install Apache
sudo apt install apache2

# Enable necessary modules
sudo a2enmod mime

cd /var/www/html
git clone https://github.com/SagnikDas-afk/Project_1-Deployment_of_Static_Website_via_CI-CD.git
 
# Set Permissions
sudo chown -R $USER:$USER /var/www/html/Project_1-Deployment_of_Static_Website_via_CI-CD/
sudo chmod -R 755 /var/www/html/Project_1-Deployment_of_Static_Website_via_CI-CD/

sudo apache2ctl configtest

# Reload Server
if [ $? -eq 0 ]; then
    sudo systemctl reload apache2
    echo "Deployment Successful!"
else
    echo "Deployment Failed: Syntax Error"
    exit 1
fi

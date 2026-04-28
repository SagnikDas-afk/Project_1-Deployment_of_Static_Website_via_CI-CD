#!/bin/bash

# 1. Change Listen port to 8080
# Uses sed to find 'Listen 80' and replace it with 'Listen 8080'
sudo sed -i 's/Listen 80/Listen 8080/g' /etc/apache2/ports.conf
sudo sed -i 's/<VirtualHost \*:80>/<VirtualHost *:8080>/g' /etc/apache2/sites-available/000-default.conf

# 2. Restart Apache to apply changes
sudo systemctl restart apache2

# 3. Get IP and format output
IP=$(hostname -I | awk '{print $1}')
echo "----------------------------------------"
echo "Deployment Info:"
echo "Hostname IP: $(hostname -i)"
echo "Access URL : http://$IP:8080"
echo "----------------------------------------"

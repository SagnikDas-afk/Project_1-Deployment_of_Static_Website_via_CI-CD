# Automated Static Website Deployment via Apache

## 📌 Project Overview
This project focuses on automating the delivery and hosting of a static web application specifically using the Apache HTTP Server (httpd).This setup is designed for direct server-side deployment and management.

## 🚀 How It Works
1. Repository Integration: The website source code is cloned directly into the Apache web root directory `(/var/www/html)`, making the files accessible to the server.
2. Port Management: To avoid conflicts with existing services, the configuration is shifted from the standard Port 80 to Port 8080.
3. Service Hosting: The Apache2 (httpd) service acts as a listener, monitoring incoming traffic on the specified port.
4. When a user accesses the server IP via Port 8080, Apache maps the request to the `index.html` file in the root directory and serves it to the browser.

## 🛠️ Tech Stack & Tools
* **Version Control**: Git & GitHub
* **Operating System**: Linux
* **Web Server**: Apache

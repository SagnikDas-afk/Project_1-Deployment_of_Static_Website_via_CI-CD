# Automated Static Website Deployment via CI/CD

## 📌 Project Overview
This is a foundational DevOps project designed to demonstrate continuous integration and continuous deployment (CI/CD). It automates the process of publishing a static website to a live Linux environment. Instead of manually uploading files via FTP or SSH, a simple `git push` triggers an automated workflow that securely updates the web server in seconds.

## 🚀 How It Works
1. Developer pushes code updates to the `main` branch on GitHub.
2. Continuous Integration: The CI runner detects the push and initiates the workflow.
3. The runner clones the repository and securely connects to the remote Linux server via SSH.
4. Continuous Deployment: Validated files are transferred to the hosting provider's production environment.

## 🛠️ Tech Stack & Tools
* **Version Control**: Git & GitHub
* **CI/CD Platform**: GitHub Actions
* **Operating System**: Linux
* **Web Server**: Apache

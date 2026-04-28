# Automated Static Website Deployment via CI/CD

## 📌 Project Overview
This is a foundational DevOps project designed to demonstrate continuous integration and continuous deployment (CI/CD). It automates the process of publishing a static website to a live Linux environment. Instead of manually uploading files via FTP or SSH, a simple `git push` triggers an automated workflow that securely updates the web server in seconds.

## 🚀 How It Works
1. **Developer** pushes code updates to the `main` branch on GitHub.
2. **GitHub Actions** triggers the deployment workflow.
3. The runner clones the repository and securely connects to the remote Linux server via SSH.
4. An optimized `rsync` operation transfers the modified static files directly to the web server directory (`/var/www/html/`).

## 🛠️ Tech Stack & Tools
* **Version Control**: Git & GitHub
* **CI/CD Platform**: GitHub Actions
* **Operating System**: Linux (Ubuntu / Amazon Linux)
* **Web Server**: Nginx / Apache
* **Security & Protocol**: OpenSSH & rsync

## 🔑 Core DevOps Skills Demonstrated
* Writing infrastructure automation using YAML syntax.
* Managing secure authentication using GitHub Repository Secrets and SSH keys.
* Administering basic Linux file system permissions and web server directories.
* Eliminating manual deployment friction by enforcing automated pipelines.

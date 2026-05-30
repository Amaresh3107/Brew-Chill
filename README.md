# ☕ Brew & Chill

A modern coffee shop landing page deployed on AWS EC2 using Linux, Nginx, GitHub, and Shell Scripting.

## 📌 Project Overview

Brew & Chill is a responsive static café website built with HTML and CSS and deployed on an AWS EC2 Ubuntu server.

The goal of this project was not only to build a website but also to gain hands-on experience with core DevOps concepts such as:

* Linux Administration
* Git & GitHub
* AWS EC2
* Nginx Web Server
* Shell Scripting
* Deployment Automation
* Basic Server Monitoring

---

## 🏗 Architecture

Developer
↓
GitHub Repository
↓
AWS EC2 (Ubuntu)
↓
Nginx Web Server
↓
Brew & Chill Website

---

## 🛠 Tech Stack

### Frontend

* HTML5
* CSS3

### DevOps & Infrastructure

* Linux (Ubuntu)
* AWS EC2
* Nginx
* Git
* GitHub
* Bash Shell Scripting

---

## 🚀 Deployment Process

### 1. Launch EC2 Instance

Created an Ubuntu EC2 instance named:

brew-chill

Configured Security Groups:

* SSH (22)
* HTTP (80)
* HTTPS (443)

---

### 2. Connect to Server

```bash
ssh -i brew-chill.pem ubuntu@<public-ip>
```

### 3. Install Nginx

```bash
sudo apt update
sudo apt install nginx -y
```

### 4. Clone Repository

```bash
git clone https://github.com/Amaresh3107/Brew-Chill.git
```

### 5. Deploy Website

```bash
sudo cp index.html /var/www/html/
sudo cp style.css /var/www/html/
sudo systemctl restart nginx
```

---

## ⚙️ Deployment Automation

Created a deployment script to automate website deployment.

### deploy.sh

```bash
#!/bin/bash

echo "Deploying Brew & Chill..."

sudo cp index.html /var/www/html/
sudo cp style.css /var/www/html/

sudo systemctl restart nginx

echo "Deployment Complete!"
```

Run:

```bash
./deploy.sh
```

---

## 📊 Server Health Monitoring

Created a health monitoring script to check:

* Hostname
* Disk Usage
* Memory Usage
* CPU Load
* Nginx Status
* Public IP Address

### healthcheck.sh

Run:

```bash
./healthcheck.sh
```

Sample Output:

```bash
Hostname: ip-172-31-38-103

Disk Usage: 39%

Memory Usage:
908 MB Total
337 MB Used

CPU Load:
0.00 0.00 0.00

Nginx: Running

Public IP:
35.xxx.xxx.xxx
```

---

## 📸 Project Screenshots

* Live Brew & Chill Website
* AWS EC2 Instance
* Nginx Installation
* Deployment Automation Script
* Health Monitoring Script
* GitHub Repository

---

## 🎯 Key Learnings

Through this project I learned:

* Linux server management
* Hosting websites on AWS EC2
* Configuring Nginx
* Using Git and GitHub workflows
* Writing shell scripts for automation
* Monitoring server health
* Basic DevOps deployment practices

---

## 🔮 Future Improvements

* Docker Containerization
* Custom Domain
* HTTPS SSL Configuration
* CI/CD using GitHub Actions
* Infrastructure as Code using Terraform

---

## 👨‍💻 Author

Amaresh Kumar

Learning DevOps through hands-on projects as part of the #90DaysOfDevOps challenge.
 Speacial Thanks to #trainwithshubham
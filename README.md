# packer-aws-ami-nginx
Build AWS AMI with Packer

# 🚀 AWS AMI Creation with Packer (Nginx Preinstalled)

This project demonstrates how to create a custom Amazon Machine Image (AMI) on AWS using Packer with Nginx pre-installed.

---

## 📌 Overview

Using Packer, this project automates:
- Launching a temporary EC2 instance
- Installing Nginx via a shell script
- Creating a reusable AMI
- Cleaning up resources after build

---

## 🧱 Tech Stack

- Packer (HCL)
- AWS EC2
- AWS CLI
- Bash

---

## 📁 Project Structure


.
├── main.pkr.hcl
├── variables.pkr.hcl
├── variables.auto.pkrvars.hcl # (ignored in git)
├── nginx.sh
├── .gitignore
└── README.md


---

## 🔐 Prerequisites

- AWS account
- AWS CLI installed and configured
- Packer installed
- EC2 key pair (.pem file)

---

## 🔑 AWS Setup

1. Create an IAM user with programmatic access  
2. Attach required permissions (avoid full access; use least privilege)  
3. Generate:
   - Access Key ID  
   - Secret Access Key  

4. Configure AWS CLI:

```bash
aws configure
🔐 Key Pair Setup
Go to EC2 → Key Pairs
Create a key (e.g., my-ssh-key)
Download the .pem file
⚙️ Configure Variables

Create a file:

variables.auto.pkrvars.hcl
ssh_keypair_name     = "my-ssh-key"
ssh_private_key_file = "C:/Users/your-user/Downloads/my-ssh-key.pem"

⚠️ Do NOT commit this file to GitHub

🧾 Configuration Highlights
Uses Ubuntu 26 * LTS as base image
Dynamically fetches latest AMI using filters
Installs and enables Nginx automatically
▶️ Usage
Initialize
packer init .
Validate
packer validate .
Build AMI
packer build .
🧠 Build Process

During execution, Packer will:

Launch a temporary EC2 instance
Connect via SSH using your key pair
Run the nginx.sh script
Create a new AMI
Terminate the temporary instance
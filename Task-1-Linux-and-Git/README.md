# Cloud Computing & DevOps Internship - Task 1

**Project:** Linux System Administration, Networking Fundamentals, Git Version Control & Cloud Development Environment Setup

## 📌 Objective
This repository contains the deliverables for Task 1 of the Cloud Computing & DevOps Internship. The objective was to configure a professional Linux-based development workstation, install essential DevOps tools, establish secure remote authentication, and build a reusable version-controlled project structure. 

Rather than using a virtual machine or WSL2, this environment was configured natively on **CachyOS (Arch Linux)** to ensure a highly optimized systems engineering environment.

## 🛠️ Technology Stack
* **Operating System:** Linux (CachyOS / Arch derivative)
* **Version Control:** Git & GitHub (SSH Authenticated)
* **Automation:** Bash Scripting
* **Networking Tools:** Ping, ip, curl, nslookup, openssh

## 📂 Project Structure
The repository follows a standardized DevOps directory structure:

```text
Task-1-Linux-and-Git/
├── docs/                     # Project documentation
│   ├── installation-guide.md
│   ├── troubleshooting.md
│   └── git-networking-notes.md
├── screenshots/              # Visual proof of execution and configuration
├── scripts/                  # Automation scripts
│   └── setup.sh
├── .gitignore                # Ignored files
└── README.md                 # Project overview
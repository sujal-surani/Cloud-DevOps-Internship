# Troubleshooting & Challenges Encountered

During the setup of the Cloud & DevOps development environment, I encountered a few technical challenges. Below is the documentation of these issues and the solutions implemented to resolve them.

## 1. Package Manager Translation (Ubuntu vs. Arch Linux)
**Challenge:**
The internship instructions provided commands for Ubuntu/Debian-based systems using the `apt` package manager (e.g., `sudo apt install git curl`). My native development environment runs CachyOS, an Arch Linux, which does not use `apt`.

**Solution Implemented:**
Instead of setting up a heavy WSL2 or VirtualBox instance, I adapted the system administration tasks for Arch Linux. I mapped the `apt` commands to their `pacman` equivalents, executing `sudo pacman -Syu` for system updates and `sudo pacman -S --needed git curl wget unzip openssh net-tools tree` to successfully install all essential DevOps dependencies.

## 2. Pre-initialized Git Repository & Configuration
**Challenge:**
During the repository setup phase, I noticed that Git was already configured in my system with my global user credentials. Running `git config` again as per standard instructions was unnecessary.

**Solution Implemented:**
Instead of re-configuring Git global variables, I bypassed the `git config` step entirely. I simply used `git init` to initialize the specific project directory and proceeded directly to adding files.

## 3. Pre-existing SSH Authentication for GitHub
**Challenge:**
The setup instructions required generating a new SSH key pair (`ssh-keygen`) and adding the public key to GitHub for secure version control. Because this is my primary daily-driver OS, I already had an active, secure SSH key linked to my GitHub account. Generating a new one could potentially overwrite my existing keys or disrupt my established workflow.

**Solution Implemented:**
Instead of generating a new key, I opted to verify my existing secure connection. I bypassed the key creation steps and executed `ssh -T git@github.com` to confirm that my current SSH keys were still actively authenticating with GitHub. Once verified, I was able to safely push my commits without altering my global SSH setup.
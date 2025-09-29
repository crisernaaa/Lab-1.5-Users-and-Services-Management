# User Management Report

## Objective
The objective of this task was to practice basic user management in Linux, including creating users, assigning passwords, and adding them to specific groups.

## Users Created
The following users were created on the system:

- **alice**
- **bob**
- **charlie**

Each user was assigned a secure password for practice purposes.

## Group Management
Users were added to the following groups to simulate different roles within the system:

- `alice` → **developers**, **administrators**
- `bob` → **developers**
- `charlie` → **testers**

## Commands Used
Below are the main commands executed during the process:

```bash
# Create users (if they did not exist already)
sudo useradd -m alice
sudo useradd -m bob
sudo useradd -m charlie

# Assign passwords
sudo passwd alice
sudo passwd bob
sudo passwd charlie

# Add users to groups
sudo usermod -aG developers alice
sudo usermod -aG developers bob
sudo usermod -aG testers charlie
sudo usermod -aG administrators alice

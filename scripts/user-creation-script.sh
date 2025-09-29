#!/bin/bash
# user-creation-script.sh
# Script to create lab users, assign passwords, and configure groups
# Generated on: 2025-09-29

# Users and passwords
declare -A users
users=( 
    ["alice"]="Al1c3!2025"
    ["bob"]="B0b!_Blue42"
    ["charlie"]="Ch@rlie_123!"
)

# Create users and home directories
for user in "${!users[@]}"; do
    if id "$user" &>/dev/null; then
        echo "User $user already exists."
    else
        sudo useradd -m "$user"
        echo "Created user $user."
    fi
done

# Set passwords
for user in "${!users[@]}"; do
    echo "$user:${users[$user]}" | sudo chpasswd
    echo "Password set for $user."
done

# Configure groups
sudo groupadd -f developers
sudo groupadd -f testers
sudo groupadd -f administrators

sudo usermod -aG developers alice
sudo usermod -aG developers bob
sudo usermod -aG testers charlie
sudo usermod -aG administrators alice

echo "User creation and group configuration completed."

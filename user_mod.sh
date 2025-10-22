#!/bin/env bash

# Create a new user named developer
sudo useradd -m -d /home/developer_home -s /bin/sh developer

# verify and display developer user's info
grep "developer" /etc/passwd

# Rename developer user to devuser
sudo usermod -l devuser developer

# Create a new group named devgroup and add here devuser
sudo groupadd devgroup
sudo usermod -aG devgroup devuser

# Set password to devuser
echo "devuser:devpass" | sudo chpasswd

# verify and display again for user changes
getent passwd devuser && groups devuser

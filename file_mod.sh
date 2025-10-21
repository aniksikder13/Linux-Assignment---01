#!/bin/env bash

# Create example.txt in user's home directory
touch ~/example.txt

#Create a new user named student without no shell and home 
sudo useradd -M -s /usr/sbin/nologin student

# Change owner and group to student
sudo chown student ~/example.txt && sudo chgrp student ~/example.txt

# Verify and display the permission changes
ls -l ~/example.txt


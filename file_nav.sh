#!/bin/env bash


# List all contents inside user's home directory and save it to home_list.txt
ls -al $HOME > $HOME/home_list.txt


# Change current directory to /var/log and listing its contents, then save to a var_log.txt
cd /var/log && ls -al . > $HOME/var_log.txt


#Find and display the path to the bash executable
bash_path=$(which bash)
echo "The path to the bash executable is: $bash_path"


# Find and display the current shell
echo "Current shell is: $SHELL"


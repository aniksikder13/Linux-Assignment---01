#!/bin/env bash


#Necessary variables
target_dir=$HOME/linux_fundamentals


# Create linux_fundamentals/scripts nested directory inside user's home directory
mkdir -p $target_dir/scripts


# Create empty file named example.txt inside linux_fundamentals
touch $target_dir/example.txt


# Copy example.txt to the scripts directory
cp $target_dir/example.txt $target_dir/scripts


#make a backup directory and move example.txt to backup
mkdir -p $target_dir/backup && mv $target_dir/example.txt $target_dir/backup

#Change the permissions of example.txt
sudo chmod -v 744 $target_dir/backup/example.txt


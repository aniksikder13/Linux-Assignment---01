#!/bin/env bash

#Create a file named original.txt inside user's home directory
touch ~/original.txt

# Make a symbolic link named softlink.txt, that point to original.txt and display verify
ln -s ~/original.txt ~/softlink.txt && ls -l ~ | grep "softlink"

# Remove original.txt and check status of softlink
rm ~/original.txt && ls -l ~ | grep "softlink"

# Create datafile.txt inside user's home directory
touch ~/datafile.txt

# Make a Hardlink file named hardlink.txt, that will point to datafile.txtm and veryfy hardlink and datafile both inode
ln ~/datafile.txt ~/hardlink.txt && ls -l ~ | grep "hardlink" && ls -li ~ | grep -E "datafile|hardlink"

# Remove datafile.txt and check status of harlink.txt
rm ~/datafile.txt && ls -l ~ | grep "hardlink"

# find all txt file inside user's home directoy and list them into file_list.txt
find ~ -type f -name "*.txt" > ~/file_list.txt

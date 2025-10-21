#!/bin/env bash

# In user's home create a directory named project and inside it create a file named report.txt
mkdir ~/project && touch ~/project/report.txt

# Change permissions of report.txt file to 644 and project directory to 755, then verify permissions changes
sudo chmod -v 644 ~/project/report.txt && sudo chmod -v 755 ~/project


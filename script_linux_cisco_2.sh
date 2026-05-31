#!/bin/bash
# Script: script_linux_cisco_2.sh
# Description: Documenting commands executed during the NDG Linux Unhatched course (Part 2).
# Author: kkevincruzattjw
# Date: 2026-05-31

# --- MODULE: MOVING FILES ---

# Rename a file from source_name to target_name
# Example: Rename 'old_name.txt' to 'new_name.txt'
mv old_name.txt new_name.txt

# Move a file to another directory
# Example: Move 'new_name.txt' to the '/tmp' directory
mv new_name.txt /tmp/

# --- MODULE: REMOVING FILES ---

# Remove (delete) a file
# Example: Delete 'unwanted_file.txt'
rm unwanted_file.txt

# Remove a directory and its contents recursively
# Example: Delete a directory named 'temp_folder' and everything inside it
rm -r temp_folder

# --- MODULE: FILTERING TEXT ---

# Search for lines containing a specific keyword in a file
# Example: Find the keyword 'root' in the '/etc/passwd' file
grep 'root' /etc/passwd

# --- MODULE: SHUTTING DOWN ---

# Shut down the system immediately (requires root privileges)
sudo shutdown -h now

# Reboot the system immediately
sudo shutdown -r now

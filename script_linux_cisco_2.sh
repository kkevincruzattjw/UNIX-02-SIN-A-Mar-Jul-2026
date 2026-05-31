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

# --- MODULE: PROCESSES ---

# Display a list of current active processes for the active user session
ps

# Display a detailed list of all running processes on the system
ps aux

# --- MODULE: PASSWORD MANAGEMENT ---

# Change the password of the current logged-in user
passwd

# Change the password of a specific user (requires root privileges)
# Example: Change the password for the user 'sysadmin'
sudo passwd sysadmin

# --- MODULE: NETWORK CONFIGURATION ---

# View the status of active network interfaces
ifconfig

# Test connectivity to a remote host (sends 4 ping packets)
# Example: Ping google.com
ping -c 4 google.com

# --- MODULE: PACKAGE MANAGEMENT ---

# Update the local package index database list (Debian/Ubuntu)
sudo apt-get update

# Search for a package in the apt package database cache
# Example: Search for the package 'nmap'
apt-cache search nmap

# Install a software package (requires root privileges)
# Example: Install 'nmap'
sudo apt-get install -y nmap

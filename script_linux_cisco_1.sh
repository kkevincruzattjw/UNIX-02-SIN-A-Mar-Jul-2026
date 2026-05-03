#!/bin/bash

# --- MODULE: BASIC COMMAND SYNTAX ---

# List files in the current directory
# Equivalent to 'ls' in the tutorial
ls

# List files in a specific directory (Argument example)
# Note: Ensure the directory exists in your environment or use one that does
ls /workspaces

# List files with long format and reverse order (Options example)
ls -lr

# --- MODULE: DIRECTORY NAVIGATION ---

# Print current working directory
pwd

# Change directory to home (Shortcut example)
cd ~

# Change to a specific path (Absolute path example)
cd /workspaces

# --- MODULE: FILE LISTING & SORTING ---

# Detailed list of the /var/log directory
ls -l /var/log

# Sort files by modification time (Newest first)
ls -lt /var/log

# Sort files by size (Largest first)
ls -lS /var/log

# --- MODULE: ADMINISTRATIVE ACCESS ---

# Note: In Codespaces, 'sudo' is usually pre-configured for the default user.
# Execute a command with administrative privileges
sudo ls /root

# --- MODULE: FILE PERMISSIONS ---

# Create a dummy script to test permissions
echo 'echo "Hello from Script"' > hello_test.sh

# Change permissions to add execution rights for the owner
chmod u+x hello_test.sh

# Run the script from the current directory
./hello_test.sh

# --- MODULE: VIEWING FILES ---

# View the first 5 lines of a file
head -n 5 /etc/passwd

# View the last 5 lines of a file
tail -n 5 /etc/passwd

# --- MODULE: COPYING & ADVANCED COPY ---

# Copy a file to the current directory
cp /etc/hostname ./hostname_copy

# Use 'dd' to create a dummy 10MB file (Be careful with 'if' and 'of')
dd if=/dev/zero of=dummy_file bs=1M count=10
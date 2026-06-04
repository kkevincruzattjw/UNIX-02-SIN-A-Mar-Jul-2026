#!/bin/bash
#Displays the current version of Bash you are running, along with license information.
bash --version
#Lists all the environment variables in your system (like PATH, USER, HOME), which define the behavior of your current session.
env
#Prints the path to the default shell for your user account (e.g., /bin/bash or /bin/zsh).
echo ${SHELL}
#Prints the User ID (numerical identifier) of the current user. The administrator (root) is always 0.
echo ${UID}
#Prints the type of operating system currently running the shell (e.g., linux-gnu or darwin23.0).
echo ${OSTYPE}
#Displays a full-format list of active processes in the current terminal, showing extra details like the owner (UID), parent process (PPID), and the exact command used.
ps -f
#Displays a full-format list of active processes in the current terminal, showing extra details like the owner (UID) and parent process (PPID).
bash -n blackhatbash.sh
#Checks for syntax errors in the script without actually running it. It reads the code but does not execute any commands.
bash -x blackhatbash.sh
#Runs the script in debug mode. It prints each command to the screen exactly as it is executed, showing how variables expand, which helps you find bugs.
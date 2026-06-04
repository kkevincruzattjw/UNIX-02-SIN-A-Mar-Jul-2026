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
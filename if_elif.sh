#!/bin/bash

# Stores the first argument passed to the script into the USER_INPUT variable
USER_INPUT="${1}"

# FIRST CHECK: Verifies if the variable is empty (-z)
# If the user did not provide an argument, displays an error and stops the script
if [[ -z "${USER_INPUT}" ]]; then
    echo "You must provide an argument!"
    exit 1 # Terminates the script with an error code
fi

# SECOND CHECK: Evaluates what type of object the given argument is
if [[ -f "${USER_INPUT}" ]]; then
    # If the argument is an existing regular file
    echo "${USER_INPUT} is a file."

elif [[ -d "${USER_INPUT}" ]]; then
    # If the argument is an existing directory (folder)
    echo "${USER_INPUT} is a directory."

else
    # If the argument does not exist in the system (neither a file nor a folder)
    echo "${USER_INPUT} is not a file or a directory."
fii
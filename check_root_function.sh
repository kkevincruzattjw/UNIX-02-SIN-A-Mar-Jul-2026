#!/bin/bash
# This function checks if the current user ID equals zero.
# EUID means "Effective User ID" (ID de Usuario Efectivo).
# In Linux/Unix, it is a built-in system variable that stores the ID of the 
# user running the script. The 'root' user (administrator) always has an ID of 0.

# This function checks if the current user ID equals zero (root).
check_root_function(){
    # -eq means "equal to". It checks if the Effective User ID is 0.
    if [[ "${EUID}" -eq "0" ]]; then
        return 0 # Returns 0 (Success/True in Bash) if the user is root.
    else
        return 1 # Returns 1 (Failure/False in Bash) if the user is NOT root.
    fi
}

# Executes the function inside the if condition to check the result
if check_root_function; then
    echo "User is root!"      # Runs if the function returned 0
else
    echo "User is not root!"  # Runs if the function returned 1
fi
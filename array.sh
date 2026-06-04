#!/bin/bash
# Sets an array containing three target network IP addresses
IP_ADDRESSES=(192.168.1.1 192.168.1.2 192.168.1.3) 

echo "${IP_ADDRESSES[*]}"   # Prints all elements in the array as a single space-separated string.
echo "${IP_ADDRESSES[0]}"   # Prints only the first element (index 0) in the array (192.168.1.1).
unset IP_ADDRESSES[1]   # Deletes the second element (index 1) from the array

echo "${IP_ADDRESSES[*]}" # Prints the modified array to the screen
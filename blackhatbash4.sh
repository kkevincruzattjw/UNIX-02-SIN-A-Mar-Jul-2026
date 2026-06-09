#!/bin/bash
let result="4 * 5"       # Performs the math operation (4*5) and saves the result (20) into the 'result' variable.
echo ${result}           # Prints the value stored in 'result' to the screen (displays 20).

result=$((5 * 5))        # Uses native Bash arithmetic evaluation (( )) to multiply 5*5 and assigns it to 'result'.
echo ${result}           # Prints the new value of 'result' to the screen (displays 25).

result=$(expr 5 + 505)   # Calls the external 'expr' program to add 5+505 and stores the result (510) in 'result'.
echo ${result}           # Prints the final value of 'result' to the screen (displays 510).
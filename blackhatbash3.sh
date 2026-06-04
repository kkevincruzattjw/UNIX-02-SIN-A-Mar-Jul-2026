book="black hat bash"            # Creates the variable 'book' and assigns the text "black hat bash" to it.
echo "This book's name is ${book}" # Prints the text to the screen, displaying the value of the 'book' variable.

root_directory=$(ls -ld /)      # Runs 'ls -ld /' and saves the root directory details into 'root_directory'.
echo "${root_directory}"         # Prints the saved root directory details to the screen.
unset book                       # Deletes the 'book' variable from memory, making it undefined.
echo "$BOOK"                     # Tries to print $BOOK. Prints nothing because of the unset and the uppercase typo.
set +x                           # Disables debug mode (xtrace) in case it was previously turned on.
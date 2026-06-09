#!/bin/bash
# Computer wake up! We write bash script today!

# =========================================================================
# STEP 1: Get names and check if they are emty
# =========================================================================

# Put first name in box 1
FIRST_NAME="${1}"

# Put last name in box 2
LAST_NAME="${2}"

# Test! Are the name boxes emty?
if [ -z "${FIRST_NAME}" ] || [ -z "${LAST_NAME}" ]; then
    # No names? Computer say error message!
    echo "Error: Debes pasar tu nombre y apellido como argumentos."
    echo "Uso: $0 <Nombre> <Apellido>"
    
    # Stop now! Game over!
    exit 1
fi # Close the "if" door

# =========================================================================
# STEP 2: Make a clean paper
# =========================================================================

# Clean everything and make fresh output.txt
> output.txt

# =========================================================================
# STEP 3: Write today date for bonus points!
# =========================================================================

# Put text "Fecha actual:" inside the file
echo "Fecha actual:" >> output.txt

# Look computer clock and put pretty date inside
date +"%d-%m-%Y" >> output.txt

# Make a blank line space
echo "" >> output.txt

# =========================================================================
# STEP 4: Write your name inside file
# =========================================================================

# Put text "Nombre completo:" inside the file
echo "Nombre completo:" >> output.txt

# Open boxes and put your full name at the bottom
echo "${FIRST_NAME} ${LAST_NAME}" >> output.txt

# =========================================================================
# STEP 5: Make a twin file
# =========================================================================

# cp means coppy! Make backup.txt same like output.txt
cp output.txt backup.txt

# =========================================================================
# STEP 6: Show results on screen
# =========================================================================

# Print pretty top line on screen
echo "=== CONTENIDO DE OUTPUT.TXT ==="

# Open file and read everything out loud now!
cat output.txt

# Print bottom line. Yay, finish!
echo "==============================="
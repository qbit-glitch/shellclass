#!/bin/bash

# This script displays various information to the screen

# Display the text 'Hello'
echo 'Hello'

# Assign a value to a variable
WORD='script'

# Display that value using the variable 
echo "$WORD"

# Demonstrate that single quotes cause variables to NOT get expanded
echo '$WORD'

# Combine variables with hard-coded text
echo "This is a shell $WORD"

# Display the contents of the variable usinf an alternative syntax
echo "This is a shell ${WORD}"

# Append text to the variable
echo "${WORD}ing is fun"

# Show how NOT to append text to a variable
# This doesn't work
echo "$WORDing is fun!"

# Create a new variable
ENDING='ed'

# Combine the two variables
echo "This is ${WORD}${ENDING}"

# Change the value stored in the ENDING variable [Reassignment]
ENDING='ing'
echo "${WORD}${ENDING} is fun!" 

# Reassign value to ENDING
echo "You are going to write many ${WORD}${ENDING} in this class!"


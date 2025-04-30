#!/bin/bash

# Function to check the user's guess
guessing_game() {
    # Get the number of files in the current directory
    local file_count=$(ls -1 | wc -l)
    
    # Initialize the user's guess
    local guess=0
    
    # Prompt the user to start guessing
    echo "Welcome to the guessing game!"
    
    # Loop until the user guesses correctly
    while [ $guess -ne $file_count ]
    do
        # Ask the user for their guess
        echo "How many files are in the current directory?"
        read guess

        # Check if the guess is correct
        if [ $guess -lt $file_count ]; then
            echo "Your guess is too low. Try again!"
        elif [ $guess -gt $file_count ]; then
            echo "Your guess is too high. Try again!"
        else
            echo "Congratulations! You guessed the correct number of files."
        fi
    done
}

# Call the guessing game function
guessing_game

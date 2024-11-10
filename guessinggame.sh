#!/bin/bash

# Function to check the user's guess
check_guess() {
  local guess=$1
  local num_files=$(ls -1 | wc -l)

  if [[ $guess -lt $num_files ]]; then
    echo "Your guess is too low. Try again!"
  elif [[ $guess -gt $num_files ]]; then
    echo "Your guess is too high. Try again!"
  else
    echo "Congratulations! You guessed the correct number of files!"
    exit 0  # Exit the program after a correct guess
  fi
}

# Get the number of files in the directory (hidden for clarity)
num_files=$(ls -1 | wc -l)

# Start the guessing game loop
while true; do
  echo "How many files are in the current directory?"
  read guess

  # Call the check_guess function
  check_guess $guess
done
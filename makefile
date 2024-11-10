# Target to generate README.md
README.md: guessinggame.sh
        # Use a command to generate README content (replace with actual command)
        echo "# Guessing Game" > README.md  # Placeholder with title
        echo "$(date)" >> README.md  # Add date and time
        wc -l guessinggame.sh >> README.md  # Count lines of code
        
# Target to run the game
run:
        bash guessinggame.sh

# Default target to run the game
.PHONY: all
all: run
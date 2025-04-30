# Makefile to generate README.md for the Guessing Game project

# Define file names
README = README.md
GAMESCRIPT = guessinggame.sh

# Default target to generate the README.md file
all: $(README)

# Rule to create README.md
$(README):
	@echo "# Guessing Game" > $(README)
	@echo "" >> $(README)
	@echo "This is a simple guessing game written in Bash, where the user tries to guess the number of files in the current directory." >> $(README)
	@echo "The game will continue prompting the user until they guess the correct number of files." >> $(README)
	@echo "" >> $(README)
	@echo "## Date and Time" >> $(README)
	@date "+%Y-%m-%d %H:%M:%S" >> $(README)  # Automatically adds the current date and time
	@echo "" >> $(README)
	@echo "## Number of Lines in $(GAMESCRIPT)" >> $(README)
	@wc -l $(GAMESCRIPT) | awk '{print $$1 " lines"}' >> $(README)  # Adds line count of guessinggame.sh
	@echo "" >> $(README)
	@echo "## Project Files" >> $(README)
	@echo "This project contains the following files:" >> $(README)
	@echo "- $(GAMESCRIPT) - The script for the guessing game." >> $(README)
	@echo "- Makefile - A makefile to generate the README.md and manage project files." >> $(README)
	@echo "- README.md - This file, generated automatically by the Makefile." >> $(README)
	@echo "" >> $(README)
	@echo "## How to Run" >> $(README)
	@echo "" >> $(README)
	@echo "1. Clone this repository:" >> $(README)
	@echo "   \`git clone https://github.com/06aslan30/guessinggame.git\`" >> $(README)
	@echo "" >> $(README)
	@echo "2. Navigate to the project directory:" >> $(README)
	@echo "   \`cd guessinggame\`" >> $(README)
	@echo "" >> $(README)
	@echo "3. Make the $(GAMESCRIPT) script executable:" >> $(README)
	@echo "   \`chmod +x $(GAMESCRIPT)\`" >> $(README)
	@echo "" >> $(README)
	@echo "4. Run the game:" >> $(README)
	@echo "   \`bash $(GAMESCRIPT)\`" >> $(README)
	@echo "" >> $(README)
	@echo "The script will ask you to guess the number of files in the current directory. It will keep prompting you until your guess is correct." >> $(README)
	@echo "" >> $(README)
	@echo "## License" >> $(README)
	@echo "This project is licensed under the MIT License - see the LICENSE file for details." >> $(README)

# Clean up
clean:
	rm -f $(README)

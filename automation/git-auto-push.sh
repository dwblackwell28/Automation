#!/bin/bash

# Navigate to the project folder
cd ~/projects/automation  # Change this to your Python project folder

# Add all changes
git add .

# Commit changes with timestamp
git commit -m "Auto commit: $(date)"

# Push to GitHub
git push origin main

echo "Git auto-push completed at $(date)"

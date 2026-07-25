#!/bin/bash
# Setup script for GitHub Profile README

echo "Setting up GitHub Profile README..."

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "Git is not installed. Please install Git first."
    exit 1
fi

# Check if gh is installed
if ! command -v gh &> /dev/null; then
    echo "GitHub CLI is not installed. Please install it first."
    exit 1
fi

# Check authentication
if ! gh auth status &> /dev/null; then
    echo "Please authenticate with GitHub CLI first: gh auth login"
    exit 1
fi

echo "Setup complete!"
echo ""
echo "Next steps:"
echo "1. Edit config/profile.json with your details"
echo "2. Push changes to your repository"
echo "3. Enable GitHub Actions in repository settings"

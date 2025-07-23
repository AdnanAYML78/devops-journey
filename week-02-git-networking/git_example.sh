#!/bin/bash
# This script demonstrates basic Git commands

echo "Setting up a Git repo..."

git init
touch example.txt
echo "My DevOps journey" > example.txt

git add example.txt
git commit -m "Initial commit"

git branch feature-branch
git checkout feature-branch
echo "Adding a new feature" >> example.txt
git add example.txt
git commit -m "Updated in feature branch"
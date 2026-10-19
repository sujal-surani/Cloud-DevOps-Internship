#!/bin/bash

PROJECT="Task-1-Linux-and-Git"

mkdir -p "$PROJECT"/{docs,scripts,diagrams,screenshots,configs,notes}

cd "$PROJECT"

touch README.md
touch .gitignore

# Bypassing git init since repository is already pre-initialized
# git init 

echo "# Cloud Computing & DevOps Internship - Task 1" > README.md
git add .
git commit -m "Add Task 1 Linux setup documentation and troubleshooting notes"

echo "Project initialized successfully."
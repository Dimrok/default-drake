#!/bin/sh

PROJECT=$1
DRAKE_REPOSITORY=${2:-infinit}

# Clone the default drake template.
git clone https://github.com/Dimrok/default-drake $PROJECT
cd $PROJECT

# Remove unwanted files.
rm -rf .git README.md default-drake.sh

# Initialize the git repository and add drake.
git init
git submodule add https://github.com/$DRAKE_REPOSITORY/drake

# Intialize the project itself.
echo '# $PROJECT' > README.md
git add *
git commit -s -m "Initialize project."

# Create a virtualenv and install drake dependencies.
cd _build/linux64 && virtualenv -p python3 .venv && . .venv/bin/activate && pip install -r ../../drake/requirements.txt

#!/bin/sh

set -ex

PROJECT=$1
DRAKE_REPOSITORY=${2:-infinit}

# Clone the default drake template.
git clone https://github.com/Dimrok/default-drake $PROJECT
cd $PROJECT

# Remove unwanted files.
rm -rf .git README.md default-drake.sh

# Intialize the project.
git init
echo '# $PROJECT' > README.md
git add *
git commit -s -m "Initialize project."

# Create a virtualenv and install drake dependencies.
cd _build/linux64 && python3 -mvirtualenv -p python3 .venv && . .venv/bin/activate && pip install git+https://github.com/Dimrok/drake
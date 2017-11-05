# Drake project barebones

This repository contains the barebones to start a C++ project using Drake as build system.

## Setup

Clone the repository and remove anything related to the previous repository, then, initialize a new git repository.

```bash
cd <parent folder>
git clone https://github.com/Dimrok/default-drake <your desired project name>
cd <your desired project name>
rm -rf .git README.md
git init
git submodule add https://github.com/infinit/drake
git add *
git commit -s -m "Initialize project."
```

## Usage

Change directory to the right os. The possible choices are:
- linux64

```
cd _build/<arch>
./drake //build -j 4
```

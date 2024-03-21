#!/bin/sh

echo "Cloning repositories..."

# Folder shortcuts for git clone location arg
PROJECTS=$HOME/Projects
PERSONAL=$PROJECTS/Personal
WORK=$PROJECTS/Work

# Projects/Sites

## Personal site
git clone git@github.com:JayRVigilla/nextjs-portfolio.git $PERSONAL/nextjs-portfolio
## Personal Dot files
git clone git@github.com:JayRVigilla/j_dot_files.git $PERSONAL/nextjs-portfolio
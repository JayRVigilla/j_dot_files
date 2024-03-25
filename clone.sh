#!/bin/sh

echo "Cloning repositories..."

# Folder shortcuts for git clone location arg
PROJECTS=$HOME/Projects
PERSONAL=$PROJECTS/Personal
WORK=$PROJECTS/Work

# Projects/Sites

## Personal site
git clone git@github.com:JayRVigilla/nextjs-portfolio.git $PERSONAL/nextjs-portfolio
# install dependencies
cd $PERSONAL/nextjs-portfolio && npm install

## Personal Dot files
git clone git@github.com:JayRVigilla/j_dot_files.git $PERSONAL/j_dot_files
# install dependencies
cd $PERSONAL/j_dot_files && npm install

## Service Notes Project
git clone git@github.com:JayRVigilla/ServiceNotesBE.git $PERSONAL/ServiceNotes/ServiceNotesBE
# install dependencies
cd $PERSONAL/ServiceNotes/ServiceNotesBE && npm install

## Draw on live video Project
git clone git@github.com:JayRVigilla/nextjs-drawVideo.git $PERSONAL/nextjs-drawVideo
# install dependencies
cd $PERSONAL/nextjs-drawVideo && npm install

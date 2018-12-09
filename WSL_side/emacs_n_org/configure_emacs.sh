#! /bin/sh -x -u -e

ORIG_DIR=${PWD}

# Add additional environmental variable to ZSH to redirect to emacs.d folder (This file will be edited everytime - not the .bashrc)
export EMACS_CFG_FOLDER=$PWD/
sudo echo 'export DISPLAY=:0' >> ~/.zshrc













cd $ORIG_DIR

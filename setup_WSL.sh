#! /bin/sh -x -u -e

WHERE_IS_EMACS="${PWD}/emacs_linux"

# Updates the WSL shell (with ZSH, and installed CURL)
./WSL_side/update_the_shell.sh

# Adds the Xserver as an external display for X-applications
./WSL_side/reroute_to_xserver.sh

# Get and compile Emacs+Org-mode 
./WSL_side/emacs_n_org/emacs_install.sh

# Setup Configuration Files for Emacs+Org-mode 
./WSL_side/emacs_n_org/emacs_org_config.sh

# Setup the WSL Terminal
./WSL_side/setup_WSL_terminal.sh

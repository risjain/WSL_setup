#!/bin/bash
WHERE_IS_EMACS="${PWD}/emacs_linux"
echo $WHERE_IS_EMACS

## Updates the WSL shell (with ZSH, and installed CURL)
sh /mnt/d/WSL_setup/WSL_side/update_the_sh.sh

## Get and compile Emacs+Org-mode 
sh /mnt/d/WSL_setup/WSL_side/emacs_n_org/emacs_install.sh
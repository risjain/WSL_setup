#!/bin/bash
##############################################################
# Setting up the Environment for Building packages/Installing Zsh
##############################################################
sudo apt-get update
sudo apt-get upgrade -y

# Installing all the dependencies needed to build the package from Source
sudo apt-get install curl -y
sudo apt-get install zsh -y
sudo apt-get install git-core -y

# Enables tab completion with oh-my-zsh plugins
echo "ZSH_DISABLE_COMPFIX='true'" >> ~/.zshrc

# Getting and installing Oh-my-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


## Adding themes to zsh
# Syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
#Auto-suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

## Change the default user to show on terminal
echo "DEFAULT_USER=`whoami`" >> ~/.zshrc

## Change directory color scheme
git clone https://github.com/seebi/dircolors-solarized ~/.dircolors
# Enable the new directory color format
echo "eval `dircolors ~/.dircolors/dircolors.256dark`" >> ~/.zshrc

# Enables external display via VcXrvc
echo "export DISPLAY=:0" >> ~/.zshrc
echo "export DISPLAY=:0" >> ~/.bashrc


## Reminder to add the plugins to .zshrc
echo "############################################################################################################"
echo "Add to the plugins list in .zshrc >>   zsh-syntax-highlighting, zsh-autosuggestions, zsh-dircolors-solarized" 
echo "############################################################################################################"
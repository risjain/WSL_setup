##############################################################
# Setting up the Environment for Building packages/Installing Emacs/Org 
##############################################################
sudo apt-get update
sudo apt-get upgrade -y

# Installing all the dependencies needed to build the package from Source
sudo apt-get install git -y
sudo apt-get install build-essential automake texinfo libjpeg-dev libncurses5-dev -y
sudo apt-get install libtiff5-dev libgif-dev libpng-dev libxpm-dev libgtk-3-dev libgnutls28-dev -y

##############################################################
# Setting up the folder structure for Emacs/Org 
##############################################################
ORIG_DIR=$PWD
WHERE_IS_EMACS="$PWD/emacs_linux"

if [ ! -d $WHERE_IS_EMACS ]; then
    mkdir -p $WHERE_IS_EMACS
fi

cd $WHERE_IS_EMACS

##############################################################
# Get latest version of Emacs 
##############################################################

# Pull for first time if not present
if [ ! -d $WHERE_IS_EMACS/emacs ]; then
    git clone -b master git://git.sv.gnu.org/emacs.git
else
    # get updates, if any    
    echo "cd $WHERE_IS_EMACS/emacs"
  	git pull
fi

cd $WHERE_IS_EMACS/emacs

git pull
./autogen.sh
./configure
make
make install

##############################################################
# Get latest version of org-mode in ~/git/orgmode.org/org-mode
##############################################################

# Pulling for first time/Updating the Org-mode repo
export GIT_SSL_NO_VERIFY=1
cd $WHERE_IS_EMACS

if [ ! -d $WHERE_IS_EMACS/org-mode ]; then
	git clone https://code.orgmode.org/bzg/org-mode.git
else
    # Getting updates, if any
    cd $WHERE_IS_EMACS/org-mode
    git pull
fi

# build the autoloads
cd $WHERE_IS_EMACS/org-mode
make
make autoloads

##############################################################
# Set the environment variable EMACS_CFG_DIR for linux to use
##############################################################
echo export EMACS_CFG_DIR=${WHERE_IS_EMACS}/emacs_settings >> ~/.bashrc 
echo export EMACS_CFG_DIR=${WHERE_IS_EMACS}/emacs_settings >> ~/.zshrc
echo export EMACS_SRC_DIR=${WHERE_IS_EMACS} >> ~/.bashrc 
echo export EMACS_SRC_DIR=${WHERE_IS_EMACS} >> ~/.zshrc

##############################################################
# Clone and configure EMACS settings (for Linux)
##############################################################
cd $WHERE_IS_EMACS
git clone -b linux git@github.com:risjain/emacs_settings.git
yes | cp -i $WHERE_IS_EMACS/emacs_settings/.emacs ~

# WSL Setup

## Clone the directory to the desired folder
```
git clone git@github.com:risjain/WSL_setup.git
WSL_setup=${PWD}
```

## From the folder where "Emacs, Org, and others" will be installed, execute the following:
```
ssh-keygen -t rsa -b 4096 -C "rj@rishabh.jain"
```

## Add the ssh key generated to the Github
```
cat ~/.ssh/id_rsa.pub
```

## Run the following commands one-by-one
```
sh $WSL_setup/WSL_side/update_the_sh.sh
sudo sh $WSL_setup/WSL_side/emacs_org_install.sh
```

## Update the plugins in ~/.zshrc to include
```
zsh-syntax-highlighting
zsh-autosuggestions
zsh-dircolors-solarized
eval `dircolors ~/.dircolors/dircolors.256dark`
```

## Check if the below is present in ~/.zshrc
```
ZSH_DISABLE_COMPFIX='true'
```

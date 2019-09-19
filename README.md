# WSL Setup
## Generate an SSH key for your machine to access Github:
```
ssh-keygen -t rsa -b 4096 -C "rj@rishabh.jain"
```

## Add the ssh key generated to the Github
```
cat ~/.ssh/id_rsa.pub
```


## Clone the directory to the desired folder
```
git clone git@github.com:risjain/WSL_setup.git
cd WSL_setup
WSL_setup=${PWD}
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

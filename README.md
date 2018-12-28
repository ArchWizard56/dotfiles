# dotfiles
My dotfiles for my Arch Linux installation. The configuration files for each program are in a separate directory, and can be installed using GNU stow. 

## Installation
Make sure you have GNU/Stow installed with 
```
which stow
```
If you don't have it installed, you can install it with:
```
pacman -S stow
```
On Arch Linux.
Next, clone the dotfiles repo with:
```
git clone https://github.com/ArchWizard56/dotfiles.git ~/.dotfiles
```
The above command will clone the repo and put it into the hidden directory .dotfiles in your home directory.
For every config that you want to install, you'll need to run stow on the directory in the .dotfiles folder. For example:
```
cd ~/.dotfiles
stow vim
```
To install a different set of files, simply substitute `vim` for the folder you'd like to install.

#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to the local dotfiles dir
############################

########## Variables

olddir=~/dotfiles_old             # old dotfiles backup directory
files="bash_profile bash_prompt bashrc aliases git-completion"    # list of files/folders to symlink in homedir

########## Installation

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -pv $olddir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv -v ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -sv $PWD/$file ~/.$file
done
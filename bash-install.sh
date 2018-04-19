#! /bin/bash

src_files='bashrc bash_aliases bash_profile bash_prompt'

echo 'Backing up old files...'
for f in $src_files; do mv -v ~/.$f ~/.${f}_backup; done

echo 'Symlinking new files...'
for f in $src_files; do ln -vs `pwd`/src/.$f ~/; done
ln -vs `pwd`/src/bash_profile.d ~/.bash_profile.d

echo 'Sourcing new files...'
source ~/.bash_profile

echo 'Done!'

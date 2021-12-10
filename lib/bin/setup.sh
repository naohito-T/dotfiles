#!/bin/bash

echo -e "Creating symbolic link of dotfiles..."

DOTFILE_PATH=~/dotfiles

for f in .??*
do
  # NoLinkFiles
  [ "$f" = ".git" ] && continue
  [ "$f" = ".gitignore" ] && continue
  [ "$f" = ".DS_Store" ] && continue

  ln -snfv "$DOTFILE_PATH/$f" "$HOME"/"$f"
done

if [ "$?" -eq 0 ]
then
  echo 'Created Done...'
else
  echo 'Created Error...'
fi

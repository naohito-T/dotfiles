#!/bin/bash

DOTFILE_PATH=~/dotfiles

for f in .??*
do
  # NoLinkFiles
  [ "$f" = ".git" ] && continue
  [ "$f" = ".gitignore" ] && continue
  [ "$f" = ".DS_Store" ] && continue

  ln -snfv "$DOTFILE_PATH/$f" "$HOME"/"$f"
done

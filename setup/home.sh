#!/usr/bin/env bash

echo "Installing dotfiles in home..."

for name in `ls home`; do
  src="$PWD/home/$name"
  target="$HOME/.$name"

  if [ -h "$target" ]; then
    if [ "`readlink "$target"`" == "$src" ]; then
      continue
    fi
    unlink $target
    echo "Removed existing symlink $target"
  elif [ -a "$target" ]; then
    echo "File $target already exists, skipping"
    continue
  fi

  ln -s "$src" "$target"
  echo "Symlinked $src to $target"
done

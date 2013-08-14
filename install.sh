#!/usr/bin/env bash

for name in *; do
  if [ ! $name == "README.md" -a ! $name == "install.sh" ]; then
    src="$PWD/$name"
    target="$HOME/.$name"

    if [ -h $target ]; then
      unlink $target
      echo "Removed existing link $target"
    elif [ -a $target ]; then
      echo "File $target already exists, skipping"
      continue
    fi

    ln -s "$src" "$target"
    echo "Symlinked $src to $target"
  fi
done

#!/usr/bin/env bash

echo "Installing Sublime Text preferences..."

if [ `uname` == 'Darwin' ]; then
  DIR=~/Library/Application\ Support/Sublime\ Text\ 3/Packages
elif [ `uname` == 'Linux' ]; then
  DIR=~/.config/sublime-text-3/Packages
else
  DIR=~/AppData/Roaming/Sublime\ Text\ 3/Packages
fi

[ ! -d "$DIR" ] && mkdir -p "$DIR"
target="$DIR/User"
src="$PWD/sublime/User"
if [ -h "$target" -a "`readlink "$target"`" == "$src" ]; then
  return
elif [ -a "$target" ]; then
  echo "$target already exists, moving to $target.bak"
  mv "$target" "$target.bak"
fi

ln -s "$src" "$target"
echo "Symlinked $target to $src"

#!/usr/bin/env bash

for file in $(find . -type f -name ".*" -not -name "*.swp" \
  | sed 's|./||');do
  ln -s -i $(pwd)/$file ~/$file
done

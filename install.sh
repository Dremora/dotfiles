#!/usr/bin/env bash

for name in `ls setup`; do
  . "$PWD/setup/$name"
done

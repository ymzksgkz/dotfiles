#!/bin/sh

NAME=$1

if [ -z "$NAME" ]; then
  echo "Failed. Name is empty."
  exit 1
fi

CONFIG_PATH="$HOME/.config/$NAME"

if [ ! -e $CONFIG_PATH ]; then
  mkdir $CONFIG_PATH
  cp -r $(pwd)/.config/nvim/* $CONFIG_PATH
fi


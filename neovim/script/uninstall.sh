#!/bin/sh

NAME=$1

if [ -z "$NAME" ]; then
  echo "Failed. Name is empty."
  exit 1
fi

CONFIG_PATH=$HOME/.config/$NAME
SHARE_PATH=$HOME/.local/share/$NAME
STATE_PATH=$HOME/.local/state/$NAME
CACHE_PATH=$HOME/.cache/$NAME

[ -e $CONFIG_PATH ] && rm -rf $CONFIG_PATH || echo "Don't exists $CONFIG_PATH"
[ -e $SHARE_PATH ] && rm -rf $SHARE_PATH || echo "Don't exists $SHARE_PATH"
[ -e $STATE_PATH ] && rm -rf $STATE_PATH || echo "Don't exists $STATE_PATH"
[ -e $CACHE_PATH ] && rm -rf $CACHE_PATH || echo "Don't exists $CACHE_PATH"


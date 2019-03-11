#!/bin/sh
#
# Rust
#
# This installs rustup

echo "› checking rustup install"

SHOULD_INSTALL=false

if ! [ -d $HOME/.cargo ]
then
  SHOULD_INSTALL=true
else
  source $HOME/.cargo/env
  if test ! $(which rustup)
  then
  	SHOULD_INSTALL=true
  fi
fi

if $SHOULD_INSTALL && 0
then
  echo "  Installing rustup for you."

  curl https://sh.rustup.rs -sSf | sh
fi

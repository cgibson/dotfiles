#!/usr/bin/env bash
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew (limited to Mac for now)
if [[ "$(uname -s)" == "Darwin" ]]
then
  if test ! $(which brew)
  then
    echo "  Installing Homebrew for you."

    # Install the correct homebrew for each OS type
    if test "$(uname)" = "Darwin"
    then
      ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
      sudo xcode-select --install
      sudo xcode-select -switch /
    elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
    then
      ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
    fi
  fi
fi

exit 0

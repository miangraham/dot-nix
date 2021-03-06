#!/bin/sh

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
CONF_LOC=$DIR/configuration.nix

if ! test -f $CONF_LOC; then
  echo "Link box config to ./configuration.nix before running."
  exit 1
fi

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  NIXOS_CONFIG=$CONF_LOC nixos-rebuild switch -I $CONF_LOC --show-trace
  sudo -u ian home-manager switch --show-trace
else
  echo "Unexpected OS"
  exit 1
fi

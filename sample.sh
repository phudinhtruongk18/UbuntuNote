#!/bin/bash

# kind of transacton 
set -o pipefail

# fail on error, undefined variables
set -eu

# save global script args
ARGS="$@"


hasflag() {
  local flag=${1}
  for var in $ARGS; do
    if [ "$var" == "$flag" ]; then
        echo 'true'
    fi
  done
  echo 'false'
}

if $(hasflag --help); then
  echo "Yeah !"
fi


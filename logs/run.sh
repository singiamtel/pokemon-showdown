#!/usr/bin/env bash

set -e

pushd .
cd "$(dirname "$0")"

# If no node modules are installed, install them
if [ ! -d "node_modules" ]; then
  npm install
fi

cat sockets.out.txt | ./node_modules/@pkmn/protocol/protocol-verifier

popd
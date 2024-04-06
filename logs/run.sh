#!/usr/bin/env bash

set -xe

pushd . >/dev/null
cd "$(dirname "$0")"

# If no node modules are installed, install them
if [ ! -d "node_modules" ]; then
  npm install
fi


cat sockets.out.txt |
	# grep -v customgroups |
	./node_modules/@pkmn/protocol/protocol-verifier

popd >/dev/null

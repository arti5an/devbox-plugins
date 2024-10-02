#!/bin/sh
# ensure npm is initialised
if [ ! -f package.json ]; then
	npm init -y
fi

# ensure packages are restored
if [ ! -d node_modules ]; then
	npm install
fi

#!/usr/bin/env bash

echo "=== start of first time setup ==="

# change to script's directory
cd "$(dirname "$0")"
SCRIPTPATH="$( pwd -P )"

# make sure Docker and Node.js is installed
if [ ! -x "$(command -v nodeos)" ] ||
   [ ! -x "$(command -v npm)" ]; then
  echo ""
  echo -e "\033[0;31m[Error with Exception]\033[0m"
  echo "Please make sure Node.js and jq are installed"
  echo ""
  echo "Install Node.js: https://nodejs.org/en/"
  echo ""
  exit
fi

# set up node_modules for frontend
echo "=== npm install packpage for frontend react app ==="
# change directory to ./frontend
cd "$SCRIPTPATH/frontend"
npm install

#!/usr/bin/env bash

# change to script's directory
cd "$(dirname "$0")/chain"

if [ -e "data/initialized" ]
then
  script="./scripts/continue_blockchain.sh"
else
  script="./scripts/init_blockchain.sh"
fi

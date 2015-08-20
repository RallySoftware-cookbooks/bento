#!/usr/local/bin/bash

set -eo pipefail

env

source ~/.bashrc

echo "--- Build $BOX_LIST"
bin/bento build --version $BENTO_VERSION $BOX_LIST

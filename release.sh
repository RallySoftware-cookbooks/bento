#!/usr/local/bin/bash

set -eo pipefail

env

source ~/.bashrc

echo "--- Release Boxes"
rake release_all

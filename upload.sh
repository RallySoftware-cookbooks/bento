#!/usr/local/bin/bash

set -eo pipefail

env

source ~/.bashrc

echo "--- Upload Boxes"
rake upload_all

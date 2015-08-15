#!/usr/local/bin/bash

set -eo pipefail

env

source ~/.bashrc

echo "--- Build Boxes"
rake build_box[$BOX_LIST]

echo "--- Upload Boxes"
rake upload_all

echo "--- Release Boxes"
rake release_all

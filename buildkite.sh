#!/bin/env bash

set -eo pipefail

echo "--- Build Boxes"
rake build_box[$BOX_LIST]

echo "--- Upload Boxes"
rake upload_all

echo "--- Release Boxes"
rake release_all

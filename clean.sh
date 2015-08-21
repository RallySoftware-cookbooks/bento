#!/usr/local/bin/bash

set -eo pipefail

env

source ~/.bashrc

function inline_image {
  printf '\033]1338;url='"$1"';alt='"$2"'\a\n'
}

inline_image 'https://oaxacaborn.files.wordpress.com/2012/02/clean-all-the-things-via-hyperbole-and-a-half.png' 'Clean All The Things'


echo "--- Cleaning up VirtualBox"
for i in `vboxmanage list runningvms | awk '{print $1}' | sed 's/"//g'`
do
  echo "Powering off $i"
  vboxmanage controlvm $i poweroff
done

for i in `vboxmanage list vms | awk '{print $1}' | sed 's/"//g'`
do
  echo "Unregistering $i"
  sleep 10
  vboxmanage unregistervm $i
done

for i in `ls ~/VirtualBox\ VMs/`
do
  echo "Removing $i"
  rm -rf /Users/buildkite/VirtualBox\ VMs/$i
done

echo "--- Cleaning up packer cru"
rake clean

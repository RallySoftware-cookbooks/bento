#!/bin/bash

# install nvm -------------------------------------------------------------------
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
source ~/.nvm/nvm.sh
nvm install v4.1.2
nvm install v0.12.0

# install rvm --------------------------------------------------------------------
if ! type rvm >/dev/null 2>&1; then
  curl -sSL https://rvm.io/mpapis.asc | gpg --import -
  curl -L https://get.rvm.io | bash -s stable
  echo '[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm' >> $HOME/.bash_profile
  source /home/vagrant/.rvm/scripts/rvm
fi

rvm install 2.1.0 --disable-binary
rvm install 2.1.5 --disable-binary
rvm install 2.2.1 --disable-binary

rvm use 2.1.0 && gem install bundler
rvm use 2.1.5 && gem install bundler
rvm use 2.2.1 && gem install bundler
rvm --default use 2.2.1
rvm cleanup all

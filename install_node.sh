#!/bin/bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
. ~/.bashrc
source ~/.bashrc
nvm install v22.14.0
nvm use v22.14.0
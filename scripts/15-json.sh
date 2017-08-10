#!/usr/bin/env bash
sudo apt-get install -y nodejs
sudo ln -s /usr/bin/nodejs /usr/bin/node

curl -L https://github.com/trentm/json/raw/master/lib/json.js | sudo tee /usr/bin/json > /dev/null


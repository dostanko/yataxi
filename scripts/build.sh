#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}")"
cd ..
git checkout .
git pull
ruby server/api_calls.rb

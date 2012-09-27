#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}")"
cd ..
git checkout .
git pull
lsof -i:4567 | awk 'NR!=1 {print $2}' | xargs kill
ruby server/api_calls.rb

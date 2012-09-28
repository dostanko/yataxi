#!/bin/bash
lsof -i:4567 | awk 'NR!=1 {print $2}' | xargs kill
cd "$( dirname "${BASH_SOURCE[0]}")"
cd ..
git checkout .
git pull
ruby server/api_calls.rb

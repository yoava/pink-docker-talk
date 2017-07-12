#!/usr/bin/env bash
dir=$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)
script_file=script.js

docker run -it --rm \
  -v "$dir/$script_file":/usr/src/script/$script_file \
  -v "$dir/package.json":/usr/src/script/package.json:rw \
  -v "$dir/yarn.lock":/usr/src/script/yarn.lock:rw \
  -v script_node_modules:/usr/src/script/node_modules \
  -w /usr/src/script node \
  /bin/bash -c "yarn install && node $script_file"

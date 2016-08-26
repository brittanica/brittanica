#!/usr/bin/env bash

packages="$(pwd)/packages"

for letter in {a..z}
do
  cd "$packages/brittanica-$letter"
  cat <<EOF > index.js
module.exports = require('./terms')
EOF
  cd ..
done
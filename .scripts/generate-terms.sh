#!/usr/bin/env bash

packages="$(pwd)/packages"
scripts="$(pwd)/.scripts"

for letter in {a..z}
do
  cd "$packages/brittanica-$letter"
  cat <<EOF >> terms.js
module.exports = {
EOF
  cd ..
done

while IFS= read -r LINE; do
  letter=`echo "$LINE" | head -c 1`
  cat <<EOF >> "$packages/brittanica-$letter/terms.js"
    "$LINE": {
      page: $RANDOM,
      description: require('./fieri.js').guy
    },
EOF
  cd ..
done < "$scripts/words.txt"

for letter in {a..z}
do
  cd "$packages/brittanica-$letter"
  cat <<EOF >> terms.js
}

EOF
  cd ..
done

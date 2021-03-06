#!/usr/bin/env bash

packages="$(pwd)/packages"

for letter in {a..z}
do
  cd "$packages/@brittanica-$letter"
  cat <<EOF > LICENSE
MIT License

Copyright (c) 2016 brittanica

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
EOF
  cat <<EOF > README.md
# @brittanica/$letter

[![js-standard-style](https://img.shields.io/badge/code%20style-standard-brightgreen.svg?style=flat-square)](http://standardjs.com/)
[![standard-readme compliant](https://img.shields.io/badge/standard--readme-OK-green.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)
[![npm version](https://img.shields.io/npm/v/brittanica-$letter.svg?style=flat-square)](https://badge.fury.io/js/brittanica-$letter)

> All words starting with $letter

## Install
\`\`\`
npm install @brittanica/$letter
\`\`\`

## Contribute

PRs accepted

## License

MIT (c) brittanica
EOF
  cat <<EOF > index.js
module.exports = require('brittanica-$letter')
EOF
  cat <<EOF > package.json
  {
  "name": "@brittanica/$letter",
  "version": "0.0.1",
  "description": "All words starting with $letter",
  "main": "index.js",
  "keywords": [
    "brittanica",
    "britannica",
    "encyclopedia"
  ],
  "dependencies": {
    "brittanica-$letter": "^13.4.0"
  },
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "author": "brittanica <brittanica@tfwno.gf>",
  "license": "MIT",
  "repository": {
    "type": "git",
    "url": "https://github.com/brittanica/brittanica.git"
  },
  "bugs": {
    "url": "https://github.com/brittanica/brittanica/issues"
  },
  "homepage": "https://github.com/brittanica/brittanica#readme",
  "publishConfig": {
    "access": "public"
  }
}
EOF
done
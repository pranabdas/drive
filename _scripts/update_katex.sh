#!/bin/bash
# run this script from the root drive folder
# bash _scripts/update_katex.sh
sudo apt update
sudo apt install -y --no-install-recommends unzip wget
CWD="${PWD}"
cd /tmp
wget https://github.com/katex/katex/releases/latest/download/katex.zip
unzip katex.zip
rm katex.zip
cp katex/katex.min.css ${CWD}/webfonts/katex
cp katex/katex.min.js ${CWD}/webfonts/katex
cp -r katex/fonts ${CWD}/webfonts/katex
rm -rf katex
cd ${CWD}

#!/bin/bash
sudo apt update
sudo apt install -y --no-install-recommends \
    unzip \
    wget
CWD="${PWD}"
cd /tmp
if [ -f "katex.zip" ] ; then
    rm katex.zip
fi
if [ -d "katex" ] ; then
    rm -rf katex
fi
wget https://github.com/katex/katex/releases/latest/download/katex.zip
unzip katex.zip
cp katex/katex.min.css ${CWD}/webfonts/katex
cp katex/katex.min.js ${CWD}/webfonts/katex
cp -r katex/fonts ${CWD}/webfonts/katex

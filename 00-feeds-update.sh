#!/bin/bash

sed -i '/^#/d' feeds.conf.default

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Comment a feed source
sed -i 's/^\(src-git telephony.*\)/#\1/' feeds.conf.default

# Append a feed source
sed -i '$a src-git extras https://github.com/mia0x75/extras' feeds.conf.default

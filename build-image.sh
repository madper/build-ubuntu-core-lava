#!/bin/sh
set -x

rm -rf ~/.snap
tar xf snap.tar -C ~/
snap install --beta --devmode ubuntu-image
cat pi-3.json | snap sign -k madper-new > pi3.model
ubuntu-image -c beta -o pi3-test.img pi3.model

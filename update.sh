#!/bin/bash

dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages

apt-ftparchive release . > Release
gpg --default-key "sriharsha.vardhan@gmail.com" -abs -o - Release > Release.gpg
gpg --default-key "sriharsha.vardhan@gmail.com" --clearsign -o - Release > InRelease

# echo "deb https://sriharshav.github.io/packages ./" > sriharshas_packages.list
#!/bin/sh

. ./make-package.sh
sudo apt-get purge $SRC
sudo dpkg -i "$DST/$SRC.deb"


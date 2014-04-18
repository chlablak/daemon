#!/bin/sh

. ./make-package.sh
sudo rm -r "/etc/$SRC/"
sudo rm -r "/var/log/$SRC/"
sudo rm -r "/usr/bin/$SRC/"
sudo apt-get remove $SRC -y
sudo dpkg -i "$DST/$SRC.deb"


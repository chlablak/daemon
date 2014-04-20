#!/bin/bash

# Parameters
DST='packages'
SRC='teeworlds-server-daemon'

# Useful variables
VERSION=$(cat $SRC/DEBIAN/control | grep Version | cut -d ' ' -f 2)
UNDERSCORE='_'

# Create the destination directory
mkdir --parent $DST

# Create the new package
dpkg-deb --build $SRC > /dev/null
mv "$SRC.deb" "$DST/$SRC$UNDERSCORE$VERSION.deb"

# Logging
echo "$DST/$SRC$UNDERSCORE$VERSION.deb successfully created"


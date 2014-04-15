#!/bin/sh

# Parameters
DST='packages'
SRC='teeworlds-server-daemon'

# Useful variables
VERSION=`cat $SRC/DEBIAN/control | grep Version | cut -d ' ' -f 2`
DST="$DST/$VERSION"

# Create the destination directory
mkdir --parent $DST

# Create the new package
dpkg-deb --build $SRC > /dev/null
mv "$SRC.deb" $DST

# Logging
echo "$DST/$SRC.deb successfully created"

# End of script
exit 0


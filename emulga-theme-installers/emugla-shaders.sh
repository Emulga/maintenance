#!/bin/sh
#
# Theme installer script 1.0
# by Nightshade
#
# Change following line for theme repo name
THEMENAME=recalbox-overlays
#
/usr/bin/clear
cd /recalbox/share
curl -s https://api.github.com/repos/Emulga/$THEMENAME/releases/latest | grep 'zipball_url.*zip' | cut -d : -f 2,3 | tr -d \" | tr -d , | wget --no-check-certificate -O /recalbox/share/emulga-shaders.zip -i -
/usr/bin/unzip emulga-shaders.zip
cd /recalbox/share/Emulga-recalbox-overlays-*
/bin/echo "Installing Overlays..."
cp -rpv system/ /recalbox/share/system/
/bin/echo "Removing installation resources..."
cd /recalbox/share
rm -rf /recalbox/share/emulga-shaders.zip /recalbox/share/Emulga-recalbox-overlays-*
/bin/echo "Installation complete..."

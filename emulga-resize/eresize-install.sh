#!/bin/sh
cd /recalbox/share/
wget --no-check-certificate https://github.com/Emulga/maintenance/raw/master/emulga-resize/emulga-resize.zip -O /recalbox/share/emulga-resize.zip
/usr/bin/unzip emulga-resize.zip
cd /recalbox/share/emulga-resize
/bin/echo "Installing SD Card Resizer..."
/bin/mount -o remount,rw /
/usr/bin/find /recalbox/share/emulga-resize -type f -print0 | xargs -0 chmod a+rx
/bin/cp -rp /recalbox/share/emulga-resize/usr/* /usr/
/bin/mount -o remount,ro /
/bin/rm /recalbox/share/emulga-resize.zip
/bin/rm -rf /recalbox/share/emulga-resize/
/bin/echo "Done!"
/bin/echo ""
/bin/echo "Please type the following to begin resizing your Share Partition"
/bin/echo ""
/bin/echo "cd /"
/bin/echo ""
/bin/echo "emulga-resizeshare"

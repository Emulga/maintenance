#!/bin/sh
/bin/echo "Downloading Maintenance script"
wget -q https://raw.githubusercontent.com/Emulga/maintenance/master/emulga-releases/silver-V1.0U/S99emulga-restore -O /tmp/S99emulga-restore
mount -o remount,rw /
cp /tmp/S99emulga-restore /etc/init.d/S99emulga-restore
chmod a+rx /etc/init.d/S99emulga-restore
mount -o remount,ro /
/etc/init.d/S99emulga-restore start
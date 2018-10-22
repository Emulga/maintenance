#!/bin/bash
# Set needed variable (start cylinder for partition)
PART_START=$(/sbin/fdisk -l /dev/mmcblk0 | grep 0p3 | cut -c 26-30)
# Stop everything that is using the share mount
/etc/init.d/S02splash stop
/etc/init.d/S25lircd stop
/etc/init.d/S31emulationstation stop
/etc/init.d/S32bluetooth stop
/etc/init.d/S91smb stop
/etc/init.d/S92virtualgamepads stop
/etc/init.d/S94manager stop
# Unmount share to be safe
/bin/umount /dev/mmcblk0p3
# Force check share partition for errors and auto fix them
/usr/sbin/fsck /dev/mmcblk0p3 -yf
# Reparition the share to the new size
/sbin/fdisk /dev/mmcblk0 <<EOF
p
d
$PART_NUM
n
p
3
$PART_START

p
w
EOF
# Reload the partition map in kernel space
/usr/sbin/partprobe
# Resize the partition to the new size
/usr/sbin/resize2fs /dev/mmcblk0p3
# Force check share partition for errors and auto fix them
/usr/sbin/fsck /dev/mmcblk0p3 -yf
# We are done reboot to apply
/sbin/shutdown -r now

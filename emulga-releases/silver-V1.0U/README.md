# These files are for restoring silver-v1.0U files and any patches released.

*That being said if you're on emulga-silver-V1.0U running the following command in SSH might be helpful*

_**(This is all one line so be careful with that copy & paste!):**_

`cd /recalbox/share && wget https://raw.githubusercontent.com/Emulga/maintenance/master/emulga-releases/silver-V1.0U/S99emulga-restore && chmod a+rx S99emulga-restore && mount -o remount,rw / && cp S99emulga-restore /etc/init.d && mount -o remount,ro / && rm S99emulga-restore && /etc/init.d/S99emulga-restore start`

_Please be aware this will restore Emulga customizations to your image even if you update RecalBox_
![Emugla Logo](https://github.com/Emulga/maintenance/raw/master/emulga-logo.png)
# Emugla maintenance repo

[Link to Emulga's webpage, includes some FAQs and tutorials](https://emul.ga/)

This repo is really for internal work and will not be entirely useful for end users.

------------------------------------------------------------------------------------

*That being said if you're on emulga-silver-V1.0U running the following command in SSH might be helpful*

_**(This is all one line so be careful with that copy & paste!):**_

`cd /recalbox/share && wget https://github.com/Emulga/maintenance/raw/master/S99emulga-restore && chmod a+rx S99emulga-restore && mount -o remount,rw / && cp S99emulga-restore /etc/init.d && mount -o remount,ro / && rm S99emulga-restore && /etc/init.d/S99emulga-restore start`

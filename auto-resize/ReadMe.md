# Auto Resize Script
We would like to give recognition to RetroPie for making this even possible.

We pulled the files necessary for even doing this from RetroPie directly and while we love RecalBox sometimes you need to borrow from the other kids.

emulga-resizeshare is also loosely based on raspi-config from Raspbian

All of /usr/resize contents are directly from RetroPie

/usr/sbin/resize2fs is a shell script that just uses LD_LIBRARY_PATH to let us use RetroPie's resize2fs files.

Once again thanks RetroPie for having a full fledged e2fsprogs we could use for this.

--------------------------------------------------------------------------------------------------------------------------------

# End users (you reading this)

SSH into recalbox and type the following to install the script (This is all on one line):

cd /recalbox/share && wget https://github.com/Emulga/maintenance/raw/master/auto-resize/auto-resize.zip && unzip auto-resize.zip && chmod a+x auto-resize/install-me && ./auto-resize/install-me

You should see a confirmation of installation, now you can run the "emulga-resizeshare" command and it will take care of the rest.

## You can also feel free to delete the auto-resize.zip and auto-resize folders in share after running install-me.
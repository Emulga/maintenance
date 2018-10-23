# Auto Resize Script
We would like to give recognition to RetroPie for making this even possible.

We pulled the files necessary for even doing this from RetroPie directly and while we love RecalBox sometimes you need to borrow from the other kids.

emulga-resizeshare is also loosely based on raspi-config from Raspbian

All of /usr/resize contents are directly from RetroPie

/usr/sbin/resize2fs is a shell script that just uses LD_LIBRARY_PATH to let us use RetroPie's resize2fs files.

Once again thanks RetroPie for having a full fledged e2fsprogs we could use for this.

--------------------------------------------------------------------------------------------------------------------------------

# End users (you reading this)

Can install this resize script by downloading the zip of this and putting it's contents on \recalbox\share

SSH into recalbox and type the following commands to install:

cd /recalbox/share && unzip auto-resize.zip && chmod a+x auto-resize/install-me && ./auto-resize/install-me

You should see a confirmation of installation, now you can run the emulga-resizeshare command and it will take care of the rest.
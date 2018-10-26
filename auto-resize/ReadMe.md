# Auto Resize Script
We would like to give recognition to RetroPie for making this even possible.

We pulled the files necessary for even doing this from RetroPie directly and while we love RecalBox sometimes you need to borrow from the other kids.

emulga-resizeshare is also loosely based on [raspi-config](https://github.com/asb/raspi-config/blob/master/raspi-config) from [Raspbian](https://www.raspberrypi.org/documentation/raspbian/)

All of /usr/resize contents are directly from [RetroPie](https://retropie.org.uk/)

/usr/sbin/resize2fs is a shell script that just uses LD_LIBRARY_PATH to let us use [RetroPie](https://retropie.org.uk/)'s resize2fs files.

Once again thanks [RetroPie](https://retropie.org.uk/) for having a full fledged e2fsprogs we could use for this.

--------------------------------------------------------------------------------------------------------------------------------

## End users (you reading this)

SSH into recalbox and type the following to install the script - (**This is all on one line so be careful with the copy and paste!**):

`wget -O - "https://raw.githubusercontent.com/Emulga/maintenance/master/auto-resize/install-me" | bash`

You should see a confirmation of installation, and what to type next to begin the resizing of the share partition.

_**Silver-v1.0U is the only release where this command will be done after install, future versions will have emulga-resize installed by default.**_
#!/bin/sh
#
# Theme installer script 1.1
# by Naitoshedo
#
# Change following line for theme repo name
THEMENAME=theme-emulga-nostalgia
#
/usr/bin/clear
cd /recalbox/share
curl -s https://api.github.com/repos/Emulga/$THEMENAME/releases/latest | grep 'zipball_url.*zip' | cut -d : -f 2,3 | tr -d \" | tr -d , | wget --no-check-certificate -O /recalbox/share/theme-emulga.zip -i -
/usr/bin/unzip theme-emulga.zip
cd /recalbox/share/Emulga-theme-emulga-nostalgia-*
/bin/mount -o remount,rw /
if [ ! -d "/recalbox/share/system/.emulationstation/themes/Emulga Nostalgia" ]; then
/bin/echo "Installing Emulga Nostalgia Theme..."
/bin/cp -rpv Emulga\ Nostalgia /recalbox/share/system/.emulationstation/themes/
else
/bin/echo "Removing old Emulga Nostalgia Theme..."
/bin/rm -rfv /recalbox/share/system/.emulationstation/themes/Emulga\ Nostalgia
/bin/echo "Installing new Emulga Nostalgia Theme..."
/bin/cp -rpv Emulga\ Nostalgia /recalbox/share/system/.emulationstation/themes/
fi
/bin/echo "Do you wish to only use the included splash screen, replacing all others?"
while true; do
read -p "Do you wish to install this program?" yn
case $yn in
        [Yy]* ) /bin/echo "Okay replacing all splash files.";/bin/rm -fv /recalbox/system/resources/splash/*; break;;
        [Nn]* ) /bin/echo "Okay installing alongside current splash files."; break;;
        * ) echo "Please answer yes or no.";;
    esac
done
/bin/echo "Installing Emulga Nostalgia splash resources..."
/bin/cp -v splash/* /recalbox/system/resources/splash/
/bin/echo "Updating Splash Screen Length in recalbox.conf"
if grep -q "system.splash.length=-1" "/recalbox/share/system/recalbox.conf"; then
/bin/echo "Splash length already adjusted..."
else
/bin/sed -i "s/system.splash.length=0/system.splash.length=-1/g" "/recalbox/share/system/recalbox.conf"
/bin/echo "Done..."
fi
/bin/mount -o remount,ro /
/bin/echo "Removing installation resources..."
cd /recalbox/share
rm -rf /recalbox/share/theme-emulga.zip /recalbox/share/Emulga-theme-emulga-nostalgia-*
/bin/echo "Installation complete..."
/bin/echo "You should be able to pick the theme immediately, splash screen(s) will display on restart..."

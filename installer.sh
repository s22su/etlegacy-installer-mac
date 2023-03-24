#!/bin/bash

set -eux

echo "Downloading ETLegacy"
wget https://www.etlegacy.com/download/file/556 -O etlegacy.tar.gz

echo "Extracting ETLegacy"
tar -xzf etlegacy.tar.gz
mv etlegacy-v2.81.1-macOS ETLegacy

echo "Extracted to ./ETLegacy"

echo "Downloading SplashDamage WolfET"
wget https://cdn.splashdamage.com/downloads/games/wet/WolfET.2.60d.dmg -O WolfETSplashDamage.dmg

echo "Converting downloaded .dmg -> .cdr to remove license"
hdiutil convert -quiet WolfETSplashDamage.dmg -format UDTO -o WolfETSplashDamageNoLicence

echo "Mounting .cdr"
hdiutil attach -quiet -nobrowse -noverify -noautoopen -mountpoint WolfETImage WolfETSplashDamageNoLicence.cdr
echo "Mounted to ./WolfETImage"

echo "Copying *.pk3 files from WolfETImage -> ETLegacy"
cp ./WolfETImage/Wolfenstein\ ET/etmain/*.pk3 ./ETLegacy/etmain/

echo "Creating symlink"
ln -s ./ETLegacy/ET\ Legacy.app ./StartETLegacy.app

echo "DONE! To start the game run this command:"
echo "open StartETLegacy.app"

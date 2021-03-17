#!/bin/bash

set -eux

echo "Removing ETLegacy from this directory"

[ -e "ETLegacy" ] && rm -rf ETLegacy
[ -e "WolfETImage" ] && rm -rf WolfETImage
[ -e "WolfETSpalshDamage.dmg" ] && rm WolfETSpalshDamage.dmg
[ -e "WolfETSpalshDamageNoLicence.cdr" ] && rm WolfETSpalshDamageNoLicence.cdr
[ -e "etlegacy.tar.gz" ] && rm etlegacy.tar.gz

rm -f StartETLegacy.app

echo "OK. I guess :)"

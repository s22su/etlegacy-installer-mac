# ETLegacy: Installer for MacOS Ventura

Downloads binaries from [ETLegacy.com](https://www.etlegacy.com/) and original WolfET from
[SplashDamage](https://www.splashdamage.com/games/wolfenstein-enemy-territory/). Does some magic
so you can just click on `StartETLegacy.app` and enjoy the game.

Tested on Apple M1 Pro and MacOS Ventura 13.2.1

## Usage

```bash
git clone https://github.com/s22su/etlegacy-installer-mac.git && cd etlegacy-installer-mac
chmod +x installer.sh
./installer.sh

# when it finishes
open StartETLegacy.app
```

## Uninstalling

You can just remove the full directory or run `./cleaner.sh` script to remove downloaded files.

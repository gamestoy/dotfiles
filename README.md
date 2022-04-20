## Installation
1. On a sparkling fresh installation of macOS:
```bash
sudo softwareupdate -i -a
xcode-select --install
```

2. Download the repo:
```bash
zsh -c "`curl -fsSL https://raw.githubusercontent.com/gamestoy/dotfiles/master/remote-install.sh`"
```

3. Then use the Makefile to install everything:
```bash
cd ~/.dotfiles
make
```

## Post installation
Customize MacOS and the dock:
```bash
./macos/default.sh
./macos/dock.sh
```

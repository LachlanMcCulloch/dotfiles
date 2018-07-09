# dotfiles

DISCLAIMER:

I used xero's repo to base the formatting and setup at the beginning of my repo as I really liked the way they had sorted their information
https://github.com/xero/dotfiles

i3		> Windows Manager
vim		> Vim Configuration

GNU Stow is recommended to install each dotfile.

sudo apt install stow

sudo apt install scrot
sudo apt install xprintidle xcalib
sudo apt install xautolock

`i3-custom.desktop`
```
[Desktop Entry]                                                                                     
Name=custom i3
Comment=improved dynamic tiling window manager
Exec=/home/lachlan/bin/start-i3.sh
Type=Application
X-LightDM-DesktopName=i3
DesktopNames=i3
Keywords=tiling;wm;windowmanager;window;manager;
```

git submodule update --init --recursive
mkdir .config
mkdir .bin

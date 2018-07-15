# dotfiles

DISCLAIMER:

I used xero's repo to base the formatting and setup at the beginning of my repo as I really liked the way they had sorted their information
https://github.com/xero/dotfiles

This guide is purely for my own reference, but if you happened to stumble upon it and are interested in trying to make sense of my ramblings, I'm not going to stop you.

i3		> Windows Manager

vim		> Vim Configuration

# GNU Stow
GNU Stow is recommended to install each dotfile. This ensures it is relatively painless to install each dotfile. 

To install stow, run the following:

## Ubuntu
```
sudo apt install stow
```

The rest of the guide assumes that you have installed stow.

# Automatic Setup
**Coming soon - maybe...**

# Specific Dotfile Dependencies and Setup

## i3

A couple of scripts I have included in `bin` require a few extra packages - these are mostly for aesthetic purposes and can easily be gutted from the dotfiles.
The requirements are [scrot](https://en.wikipedia.org/wiki/Scrot), [xprintidle](https://aur.archlinux.org/packages/xprintidle/), and [xautolock](https://linux.die.net/man/1/xautolock).

To install, run the following:

```
sudo apt install scrot xprintidle xcalib xautolock
```

My setup requires a custom xsession since I use Ubuntu 18. Put the following into `/usr/share/xsessions/` and replace <HOME-DIR-HERE> with your home dir (equivalent of `~`

`i3-custom.desktop`
```
[Desktop Entry]
Name=custom i3
Comment=improved dynamic tiling window manager
Exec=<HOME-DIR-HERE>/bin/start-i3.sh
Type=Application
X-LightDM-DesktopName=i3
DesktopNames=i3
Keywords=tiling;wm;windowmanager;window;manager;
```

The i3 config has a submodule that is required for its split functionality I use so update submodules:
```
git submodule update --init --recursive
```

Before running stow, I like to make directories to stop stow from putting the whole dir
```
mkdir ~/bin
stow i3
stow bin
```

## Vim
For Vim I like to use neovim, however it is backward compatible with vi/vim (for the most part).

Install neovim
```
sudo apt install neovim
```

Make a dir for .vim and .config
```
mkdir ~/.vim
mkdir ~/.config
```

Stow vim
```
stow vim
```

On first run of vim, it will start the package installed `Plugged`. To run this after updating the `plugin.vim` run `:PlugInstall` from within vim/nvim.

# Fonts
stow fonts
xrdb ~/.Xresources

# urxvt

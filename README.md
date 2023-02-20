# Dotfiles

Personal dotfiles based on arch linux install with hyprland window manager and neovim as text editor

# Table of Contents

- [Overview](#dotfiles)
- [Installation](#installation)
-[Single package](#single-package)

# Installation
 
Once you have a base arch install you should clone this repo using the following command

```bash
git clone https://github.com/Roberth0/dotfiles.git
```
For being able to automatically generate all the simlinks required you must have installed the GNU stock package

```bash
sudo pacman -S stow
```
## Single Package

When only applying one package config you should use the command **stow** followed by the directory you want to install

```bash
# Example alacritty
stow alacritty
```


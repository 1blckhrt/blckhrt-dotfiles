# 1blckhrt's dotfiles

### Please note I am using EndeavourOS (an Arch-based distribution of Linux) for this setup, so some packages may have different names, dependencies, and setups.

### Based on [DarkReaper231's Eternal Black dotfiles](https://github.com/DarkReaper231/eternalblack.git)

## Installing all required packages

* `sudo pacman -S polybar picom kitty rofi pavucontrol thunar dunst feh nm-applet xfce4-power-manager ranger i3 powerline dmenu light gedit xrandr arandr flameshot lxappearance`

* `yay -S cava spotify`

## Setup commands

* `sudo usermod -a -G video <your user here>`
* `sudo chmod +s /usr/bin/light`

## Move/replace all files into corresponding directories
* `.config` = `~/.config/` (may need to enable hidden files)
* `Documents/Scripts` = `~/Documents/Scripts/`
* `Pictures` = `~/Pictures/`

## Making the scripts executable
* `cd ~/Documents/Scripts`
* `chmod +x battery.sh brightness.sh logout.sh monitor_setup.sh reboot.sh restart_picom.sh rofi_powermenu.sh shutdown.sh`

## Fonts to install 
* FontAwesome
* JetBrainsMono Nerd Font
* FontAwesome6Free
* TerminessTTF Nerd Font Mono
* Hack Nerd Font

## Setup of weather Polybar module
* Sign up for an account on openweatherapi, generate an API key
* Input your city and API key in `~/.config/polybar/weather.py`
#!/bin/bash

set -e

HELPER="paru"

echo "Doing a system update..."
sudo pacman -Syyu

# install base-devel if not installed
sudo pacman -S --noconfirm base-devel curl wget git gunzip unzip

# install AUR helper
echo "Install $HELPER as AUR helper"
mkdir -p ~/.srcs
if ! command -v $HELPER &> /dev/null
then
	git clone https://aur.archlinux.org/$HELPER.git ~/.srcs/$HELPER
	(cd ~/.srcs/$HELPER && makepkg -si)
fi

# install video driver and microcode
sudo pacman -S --noconfirm xf86-video-amdgpu xf86-video-ati amd-ucode

# install xorg if not installed
sudo pacman -S --noconfirm xorg xorg-xinit xorg-xinput xterm xorg-twm xorg-fonts-misc \
  bspwm sxhkd lightdm xclip polybar

# install other required tools
sudo pacman -S --noconfirm alsa-utils bluez pulseaudio

# install gui tools
paru -S --noconfirm rofi feh picom dunst xidlehook capitaine-cursors

# install dev tools
paru -S --noconfirm neovim python-pynvim vim tmux kitty tabnine \
  fish fisher yarn asdf-vm \
  fd bottom ripgrep exa git-delta fzf \
  docker vagrant virtualbox firecracker \
  tcpdump termshark flameshot \
  age
paru -S --noconfirm clang gcc zig

# install language support
mkdir -p ~/.config/fish/completions && ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions
asdf plugin add nodejs
asdf install nodejs latest
asdf global nodejs latest
asdf plugin add ruby
asdf install ruby latest
asdf global ruby latest

# install web tools
paru -S --noconfirm discord discord-ptb telegram-desktop \
	firefox-developer-edition brave-bin foliate

# install required fonts
paru -S --noconfirm ttf-cascadia-code ttf-librebaskerville \
  noto-fonts noto-fonts-cjk noto-fonts-emoji

# install extra tools
paru -S --noconfirm ibus-bamboo lm_sensors i2c-tools

# symlink config files
ln -sf $(realpath .config)/* ~/.config
ln -sf $(realpath gui/.Xmodmap) ~/.Xmodmap
ln -sf $(realpath gui/.xsession) ~/.xsession
ln -sf $(realpath gui/.xinitrc) ~/.xinitrc
sudo chmod 755 ~/.config/bspwm/bspwmrc

# install neovim plugins
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim --headless +PluginInstall +qa

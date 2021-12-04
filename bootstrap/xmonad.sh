#!/usr/bin/env bash

install_xmonad() {
  if [[ $(which xmonad) ]] 2>/dev/null; then
    echo_c "xmonad is already installed" $c_red
  else
    echo_c "Installing xmonad" $c_blue

    new_line

    doas pacman -S \
      > xorg-server xorg-apps xorg-xinit xorg-xmessage \
      > libx11 libxft libxinerama libxrandr libxss \
      > pkgconf \
      > nitrogen \
      > xmonad xmonad-contrib xmobar

    new_line

    echo_c "Create a symbolic link for xmonad config file" $c_blue
    mkdir ~/.xmonad
    ln -s ~/.dotfiles/xmonad/xmonad.hs ~/.xmonad/xmonad.hs
    ln -s ~/.dotfiles/xmonad/xmobarrc.hs ~/.xmobarrc

    new_line

    echo_c "Create a symbolic link for xinit config file" $c_blue
    ln -s ~/.dotfiles/xinit/xinitrc ~/.xinitrc

    horizontal_row
  fi
}

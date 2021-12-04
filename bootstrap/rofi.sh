#!/usr/bin/env bash

install_rofi() {
  if [[ $(which rofi) ]] 2>/dev/null; then
    echo_c "rofi is already installed" $c_red
  else
    echo_c "Installing rofi" $c_blue

    new_line

    doas pacman -S rofi

    new_line

    echo_c "Create a symbolic link for rofi config file" $c_blue
    mkdir ~/.config/rofi
    ln -s ~/.dotfiles/rofi/config.rasi ~/.config/rosi/config.rasi
    ln -s ~/.dotfiles/rofi/nord-theme.rasi ~/.config/rosi/nord-theme.rasi

    horizontal_row
  fi
}

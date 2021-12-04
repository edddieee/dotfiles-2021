#!/usr/bin/env bash

install_alacritty() {

  if [[ $(which alacritty) ]] 2>/dev/null; then
    echo_c "Alacritty is already installed" $c_red
  else
    echo_c "Installing Alacrity" $c_blue
  
    new_line
  
    doas pacman -S ttf-hack alacritty
  
    new_line
  
    echo_c "Create a config file for alacritty" $c_blue
    mkdir ~/.config
    mkdir ~/.config/alacritty
    ln -s ~/.dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
  
    new_line

    echo_c "[Alacrity] Successfully installed" $c_green

    horizontal_row
  fi

}

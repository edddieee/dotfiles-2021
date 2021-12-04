#!/usr/bin/env bash

install_ripgrep() {

  if [[ $(which rg) ]] 2>/dev/null; then
    echo_c "Ripgrep is already installed" $c_red
  else
    echo_c "Installing Ripgrep" $c_blue

    new_line

    doas pacman -S ripgrep

    new_line

    echo_c "[Ripgrep] Successfully installed" $c_green

    horizontal_row
  fi

}

#!/usr/bin/env bash

install_fzf() {

  if [[ $(which vim) ]] 2>/dev/null; then
    echo_c "FZF is already installed" $c_red
  else
    echo_c "Installing fzf" $c_blue
  
    new_line
  
    doas pacman -S fzf
  
    horizontal_row
  fi

}

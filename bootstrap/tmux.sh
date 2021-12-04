#!/usr/bin/env bash

install_tmux() {

  if [[ $(which tmux) ]] 2>/dev/null; then
    echo_c "Tmux is already installed" $c_red
  else
    echo_c "Installing tmux" $c_blue
  
    new_line
  
    doas pacman -S tmux
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  
    new_line
  
    echo_c "Create a config file for tmux" $c_blue
    mkdir ~/.config/tmux
    ln -s ~/.dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf
  
    horizontal_row
  fi

}

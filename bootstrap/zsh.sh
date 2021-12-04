#!/usr/bin/env bash

install_zsh() {

  if [[ $(which zsh) ]] 2>/dev/null; then
    echo_c "zsh is already installed" $c_red
  else
    echo_c "Installing zsh" $c_blue
  
    new_line
  
    doas pacman -S zsh

    chsh -s /usr/bin/zsh

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  
    new_line
  
    echo_c "Create a config file for alacritty" $c_blue
    ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
    ln -s ~/.dotfiles/zsh/zprofile ~/.zprofile
  
    new_line

    echo_c "[ZSH] Successfully installed" $c_green

    horizontal_row
  fi

}

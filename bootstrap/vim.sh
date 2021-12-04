#!/usr/bin/env bash

install_vim() {

  if [[ $(which vim) ]] 2>/dev/null; then
    echo_c "Vim is already installed" $c_red
  else
    echo_c "Installing vim" $c_blue
  
    new_line
  
    doas pacman -S vim
  
    new_line
  
    echo_c "Create a config file for tmux" $c_blue
    ln -s ~/.dotfiles/vim/vimrc ~/.vimrc

    $ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  
    horizontal_row
  fi

}

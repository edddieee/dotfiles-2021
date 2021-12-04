#!/usr/bin/env bash

install_git() {
  if [[ $(which git) ]] 2>/dev/null; then
    echo_c "Git is already installed" $c_red
  else
    echo_c "Installing git" $c_blue

    new_line

    doas pacman -S git openssh

    new_line

    read -n 1 -p "Type your username: " gitusername
    git config --global user.name "${gitusername}"

    read -n 1 -p "Type your email: " gitemail
    git config --global user.email "${gitemail}"
    
    echo_c "Set vim as default editor" $c_blue
    git config --global core.editor vim

    new_line

    echo_c "Set default branch name as main" $c_blue
    git config --global init.defaultBranch main

    new_line

    echo_c "Set ssh keys" $c_blue
    ssh-keygen -t ed25519 -C "${gitemail}"
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_ed25519

    horizontal_row
  fi
}

#!/usr/bin/env bash

source ./bootstrap/helpers.sh
source ./bootstrap/alacritty.sh
source ./bootstrap/fzf.sh
source ./bootstrap/git.sh
source ./bootstrap/ripgrep.sh
source ./bootstrap/rofi.sh
source ./bootstrap/tmux.sh
source ./bootstrap/vim.sh
source ./bootstrap/xmonad.sh
source ./bootstrap/zsh.sh

echo_c "
      _|              _|          _|_|  _|  _|
  _|_|_|    _|_|    _|_|_|_|    _|          _|    _|_|      _|_|_|
_|    _|  _|    _|    _|      _|_|_|_|  _|  _|  _|_|_|_|  _|_|
_|    _|  _|    _|    _|        _|      _|  _|  _|            _|_|
  _|_|_|    _|_|        _|_|    _|      _|  _|    _|_|_|  _|_|_|
" $c_blue

echo "This is my own dotfiles and you should not use this!"

new_line

read -n 1 -p "Do you wanna proceed? [y/n]: " answer

new_line 2

if [[ "$answer" =~ [^Yy] ]]; then
  echo_c "You're a smart person ʘ‿ʘ" $c_green
  exit 1
fi

echo_c "Let's keep going ( ͡° ͜ʖ ͡°)" $c_green

horizontal_row

# ==============================================================================
# @name (git)
# @desc (Git is a distributed version control system designed to handle
#        everything from small to very large projects with speed and efficiency)
# @link (https://wiki.archlinux.org/title/Git)
# ==============================================================================

install_git

# ==============================================================================
# @name (zsh)
# @desc (Zsh is a powerful shell that operates as both an interactive shell and
#        as a scripting language interpreter.)
# @link (https://wiki.archlinux.org/title/zsh)
# ==============================================================================

install_zsh

# ==============================================================================
# @name (alacritty)
# @desc (Alacritty is a simple, GPU-accelerated terminal emulator written in
#        Rust.)
# @link (https://wiki.archlinux.org/title/alacritty)
# ==============================================================================

install_alacritty

# ==============================================================================
# @name (xmonad)
# @desc (xmonad is a tiling window manager for X.)
# @link (https://wiki.archlinux.org/title/xmonad)
# ==============================================================================

install_xmonad

# ==============================================================================
# @name (rofi)
# @desc (A window switcher, Application launcher and dmenu replacement.)
# @link (https://github.com/davatorium/rofi)
# ==============================================================================

install_rofi

# ==============================================================================
# @name (tmux)
# @desc (tmux is a terminal multiplexer.)
# @link (https://wiki.archlinux.org/title/tmux)
# ==============================================================================

install_tmux

# ==============================================================================
# @name (vim)
# @desc (Vim is a terminal text editor.)
# @link (https://wiki.archlinux.org/title/Vim)
# ==============================================================================

install_vim

# ==============================================================================
# @name (fzf)
# @desc (fzf is a general-purpose command-line fuzzy finder.)
# @link (https://wiki.archlinux.org/title/fzf)
# ==============================================================================

install_fzf

# ==============================================================================
# @name (Ripgrep)
# @desc (ripgrep is a line-oriented search tool that recursively searches the
#        current directory for a regex pattern.)
# @link (https://github.com/BurntSushi/ripgrep)
# ==============================================================================

install_ripgrep

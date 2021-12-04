#!/usr/bin/env bash

c_red="\e[0;91m"
c_blue="\e[0;94m"
c_green="\e[0;92m"
c_white="\e[0;97m"
c_bold="\e[1m"
c_uline="\e[4m"
c_reset="\e[0m"

# Create new lines. lol
function new_line() {
  for ((i = 1; i <= ${1:-1}; i++)) ; do 
    echo
  done
}

echo_c() {
  echo -e "${2}${1}${c_reset}"
}

horizontal_row() {
  new_line
  echo "================================================================================"
  new_line
}

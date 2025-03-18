#!/bin/zsh

if [[ -z $(functions zinit) ]]; then
  return
fi

while true; do
  read "response?Install Zinit (y/n)? "
  response=${response:l}  # Convert to lowercase

  case "$response" in
    y)
      echo "You chose to install Zinit."
      break
      ;;
    n)
      echo "Ok, not installing."
      return
      ;;
    *)
      echo "Invalid input. Please enter y or n."
      ;;
  esac
done

echo "installing"

# [ ! -d $zinit_home ] && mkdir -p "$(dirname $zinit_home)"

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"

if [ ! -d $zinit_home/bin/.git ]; then
  git clone https://github.com/zdharma-continuum/zinit.git "$zinit_home"
fi

#!/bin/sh

ACTION=$(zenity --width=90 --height=200 --list --radiolist --text="Select logout action" --title="Logout" --column "Choice" --column "Action" TRUE Shutdown FALSE Reboot FALSE LockScreen FALSE Suspend)

if [ -n "${ACTION}" ];then
  case $ACTION in
  Shutdown)
    systemctl poweroff
    ;;
  Reboot)
    ;;
  Suspend)
    systemctl suspend
    ;;
  LockScreen)
    flock
    ;;
  esac
fi

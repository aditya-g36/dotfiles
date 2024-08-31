#!/bin/bash

options="Shutdown\nReboot\nSuspend\nHibernate"

selected=$(echo -e $options | wofi --dmenu)

case $selected in
Shutdown)
  systemctl poweroff
  ;;
Reboot)
  systemctl reboot
  ;;
Suspend)
  systemctl suspend
  ;;
Hibernate)
  systemctl hibernate
  ;;
esac

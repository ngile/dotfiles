#!/usr/bin/env bash

if
    options=$(echo -e "  Lock\n  Suspend\n  Logout\n  Restart\n  Shutdown" \
           | rofi -dmenu -p "　  Select: " -width 10)
    then
        case "$options" in
            "  Lock"|lock)
                                            ~/.config/i3/lock.sh ;;
            "  Suspend"|sleep|suspend)
                                            ~/.config/i3/lock.sh & systemctl suspend ;;
            "  Logout"|logout)
                                            i3-nagbar -t warning -m 'Are you sure you  want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit' ;;
            "  Restart"|reboot)
                                            i3-msg exit & systemctl reboot ;;
            "  Shutdown"|shutdown)
                                            i3-msg exit & systemctl poweroff ;;
            "  Cancel"|*)
                                            exit ;;
        esac
    else
        exit
fi

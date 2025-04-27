#!/bin/bash

rofi_cmd="rofi -theme ~/.config/rofi/power.rasi"

# Opciones del menú
shutdown=" Apagar"
reboot=" Reiniciar"
lock=" Bloquear"
suspend=" Suspender"
logout=" Cerrar sesión"

# Mostrar el menú
chosen=$(echo -e "$lock\n$suspend\n$logout\n$reboot\n$shutdown" | $rofi_cmd -dmenu -p "[^.^]")

case $chosen in
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        i3lock || swaylock || betterlockscreen -l
        ;;
    $suspend)
        systemctl suspend
        ;;
    $logout)
        hyprctl dispatch exit || pkill -KILL -u $USER
        ;;
esac


#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

style="$($HOME/.config/rofi/applets/menu/style.sh)"

dir="$HOME/.config/rofi/applets/menu/configs/$style"
rofi_command="rofi -theme $dir/screenshot.rasi"

# Error msg
msg() {
	rofi -theme "$HOME/.config/rofi/applets/styles/message.rasi" -e "Please install 'flameshot' first."
}

# Options
screen=""
area=""


# Variable passed to rofi
options="$screen\n$area"

chosen="$(echo -e "$options" | $rofi_command -p 'App : flameshot' -dmenu -selected-row 1)"
case $chosen in
    $screen)
		if [[ -f /usr/bin/flameshot ]]; then
            flameshot full -p /home/dima/Изображения/Screenshots
		else
			msg
		fi
        ;;
    $area)
		if [[ -f /usr/bin/flameshot ]]; then
			flameshot gui -p /home/dima/Изображения/Screenshots

		else
			msg
		fi
        ;;
   esac


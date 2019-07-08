#!/bin/bash

print_msg()
{
	echo "[Bigtuna.io miuni32] $1"
}

check_ret()
{
	if [ $? -eq 0 ]; then
		print_msg "..COMPLETED!"
	else
		print_msg "..FAILED"
		exit
	fi
}

print_msg "Erasing ROM on Atmega32u4 on Miuni32 .."
dfu-programmer atmega32u4 erase
check_ret

print_msg "Programming firmware .."
dfu-programmer atmega32u4 flash $1
check_ret

print_msg "Starting Miuni32 .."
dfu-programmer atmega32u4 start
check_ret
print_msg "Finished flashing Miuni32. Enjoy!"

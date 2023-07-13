#!/bin/bash

if [[ $(wmctrl -lx | grep "Vivaldi") ]]; then
	exit
fi

vivaldi-stable &

# Please make sure you have `wmctrl` installed on your system.

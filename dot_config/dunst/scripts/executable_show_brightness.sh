#!/bin/bash

notify-send -t 700 -u normal "Brightness: " -h int:value:"$(brightnessctl -m | awk -F, '{print substr($4, 0, length($4)-1)}')"

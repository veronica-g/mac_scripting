#!/usr/bin/env bash
#
# Reset Mac OS wifi settings script
# Created by and last edited by: Veronica Goralski, June 29 2018
# MIT IS&T: http://ist.mit.edu


wifi_int=`networksetup -listallhardwareports | awk '/Hardware Port: Wi-Fi/{getline; print $2}'`

# power off the adapter
networksetup -setairportpower $wifi_int off
sudo ifconfig $wifi_int down

# remove associated SSID plist files
sudo rm /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist

# power back on the adapter
networksetup -setairportpower $wifi_int on
sudo ifconfig $wifi_int up

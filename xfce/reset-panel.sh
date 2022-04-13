#!/bin/bash

xfce4-panel --quit && echo "Shut down the panel"
pkill xfconfd && echo "Kill the xfce4 configuration daemon"
rm -rf ~/.config/xfce4/panel && echo "Delete settings for the panel"
rm -rf ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml && echo "Clear out the settings for xfconfd"
echo "Restart the panel" && xfce4-panel &
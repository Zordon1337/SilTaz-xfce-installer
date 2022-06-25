#!/bin/sh
tazpkg -gi gtk-xfce-engine
tazpkg -gi gtk2-engine-murrine
tazpkg -gi libxfce4ui
tazpkg -gi libxfce4ui-dev
tazpkg -gi libxfcegui4
tazpkg -gi xfce-utils
tazpkg -gi xfce4
tazpkg -gi xfce4-appfinder
tazpkg -gi xfce4-dev-tools
tazpkg -gi xfce4-icon-theme
tazpkg -gi xfce4-mixer
tazpkg -gi xfce4-notifyd
tazpkg -gi xfce4-panel
tazpkg -gi xfce4-ristretto
tazpkg -gi xfce4-session
tazpkg -gi xfce4-settings
tazpkg -gi xfce4-slitaz-config
tazpkg -gi xfce4-volumed
tazpkg -gi xfce4-whiskermenu-plugin
tazpkg -gi xfwm4
tazpkg -gi xfwm4-themes
tazpkg -gi upower
tazpkg -gi terminal
tazpkg -gi thunar-vfs
tazpkg -gi thunar-volman
tazpkg -gi thunar-archive-plugin
tazpkg -gi tango-icon-theme

for index1 in $(find /usr/share/icons/ -name index.theme -type f)
do
 DIRICON="$(dirname $index1)"
 [ -f $DIRICON/icon-theme.cache ] && rm -f $DIRICON/icon-theme.cache
 gtk-update-icon-cache $DIRICON
done

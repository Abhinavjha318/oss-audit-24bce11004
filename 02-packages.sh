#!/bin/bash
# Author: Abhinav Jha (24BCE11004)

echo "================================================================================"
echo "                   VLC AUDIT - PACKAGE INSPECTOR                 "
echo "================================================================================"

if [ -x "/usr/bin/apt" ]; then
  PACKAGE_MANAGER="apt"
  PACKAGE_NAME="vlc"
else
  PACKAGE_MANAGER="yum"
  PACKAGE_NAME="vlc"
fi

if $PACKAGE_MANAGER list --installed | grep -q $PACKAGE_NAME; then
  echo "Status: $PACKAGE_NAME is INSTALLED on this $(lsb_release -ds) system."
  echo "Version: $($PACKAGE_MANAGER show $PACKAGE_NAME | grep Version | cut -d ' ' -f2)"
else
  echo "Status: $PACKAGE_NAME is NOT installed on this $(lsb_release -ds) system."
fi

echo "--------------------------------------------------------------------------------"
echo "FOSS Philosophy Notes:"
echo " - VLC: A free and open-source media player that provides users with the freedom to play various media formats."
echo " - Firefox: A free and open-source web browser that promotes user freedom and security."
echo " - GIMP: A free and open-source raster graphics editor that provides users with the freedom to create and edit images."
echo " - LibreOffice: A free and open-source office suite that provides users with the freedom to create and edit documents."
echo "================================================================================"
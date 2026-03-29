#!/bin/bash
# Author: Abhinav Jha (24BCE11004)

echo "================================================================================"
echo "                   VLC AUDIT - DIRECTORY AUDITOR                 "
echo "================================================================================"

dirs=("/etc" "/var/log" "/usr/bin" "/usr/lib" "/var/lib/vlc" "/etc/vlc")

echo "Directory          Size          Permissions          Owner"
echo "--------------------------------------------------------------------------------"
for dir in "${dirs[@]}"; do
  if [ -d "$dir" ]; then
    size=$(du -sh "$dir" | cut -f1)
    perms=$(stat -c "%a" "$dir")
    owner=$(stat -c "%U:%G" "$dir")
    echo "$dir          $size          $perms          $owner"
  else
    echo "$dir          NOT FOUND"
  fi
done
echo "================================================================================"
#!/bin/bash
# Author: Abhinav Jha (24BCE11004)
# Suggested log path for VLC: /var/log/syslog

echo "================================================================================"
echo "                   VLC AUDIT - LOG FILE ANALYZER              "
echo "================================================================================"

target_log="$1"
keyword="$2"

echo "Analyzing log file: $target_log"
echo "Searching for keyword: $keyword"

count=0
matches=()
while IFS= read -r line; do
  if [[ "$line" == *"$keyword"* ]]; then
    ((count++))
    matches+=("$line")
  fi
done < "$target_log"
echo "Found $count matches for keyword '$keyword':"

tail -n 5 <<< "${matches[@]}"
echo "================================================================================"
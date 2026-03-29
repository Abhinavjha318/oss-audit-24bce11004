#!/bin/bash
# Author: Abhinav Jha (24BCE11004)

echo "================================================================================"
echo "                   VLC AUDIT - MANIFESTO GENERATOR              "
echo "================================================================================"

read -p "What is your name? " name
read -p "What is your favorite open-source project? " project
read -p "What do you think is the most important aspect of open-source software? " aspect

echo "My name is $name, and I believe in the power of open-source software. My favorite project is $project, and I think the most important aspect of open-source software is $aspect."

echo "My name is $name, and I believe in the power of open-source software. My favorite project is $project, and I think the most important aspect of open-source software is $aspect." > "${USER}.txt"
echo "Manifesto saved to ${USER}.txt"
echo "================================================================================"
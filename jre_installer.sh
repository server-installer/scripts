#!/usr/bin/env bash
#!/bin/bash

echo ""
echo -e "\e[1mScript coded by server-installer.de - \e[93m7quit \e[0m"
sleep 1
echo -e "\e[1mTwitter:\e[0m \e[96mhttps://twitter.com/servinstaller"
sleep 1.5
clear

echo -e "\e[32m֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎ \e[0m"
echo -e "\e[32m֎ \e[0m         \e[1mJava 8 installer \e[0m           \e[32m֎ \e[0m"
echo -e "\e[32m֎ \e[0m             \e[1mfor Debian 9 \e[0m           \e[32m֎ \e[0m"
echo -e "\e[32m֎ \e[0m           \e[1mVersion Beta v1.0 \e[0m        \e[32m֎ \e[0m"
echo -e "\e[32m֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎ \e[0m"
echo -e "\e[32m֎                                      \e[32m֎ \e[0m"
echo -e "\e[32m֎ \e[0m \e[1m1. \e[0m Java 8 install                  \e[32m֎ \e[0m"
echo -e "\e[32m֎ \e[0m \e[1m2. \e[0m Java 8 uninstall                \e[32m֎ \e[0m"
echo -e "\e[32m֎ \e[0m \e[1m3. \e[0m Close the script                \e[32m֎ \e[0m"
echo -e "\e[32m֎                                      \e[32m֎ \e[0m"
echo -e "\e[32m֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎ \e[0m"

echo ""
read -p "Choose a number: " opt1

if [ "$opt1" = "1" ]; then

  clear
  echo "Java 8 will be now installed."
  sleep 2
  clear
  echo "Java 8 will be now installed.."
  sleep 1
  clear
  echo "Java 8 will be now installed..."
  sleep 2
  apt install default-jre -y
  sleep 3
  clear
  exit 0
fi

if [ "$opt1" = "2" ]; then

  echo "Java 8 will be now uninstalled."
  sleep 1
  clear
  echo "Java 8 will be now uninstalled.."
  sleep 1
  clear
  echo "Java 8 will be now uninstalled..."
  sleep 2
  apt-get remove default-jre -y
  sleep 3
  clear
  exit 0
fi

if [ "$opt1" = "3" ]; then

  sleep 0.5
  clear
  sleep 0.3
  echo ""
  echo -e "\e[1m\e[92mthank you for using the script! \e[0m"
  sleep 3
  clear
  exit 0
fi

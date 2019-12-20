#!/bin/bash

echo ""
echo -e "\e[1mScript coded by server-installer.de - \e[93mSaveCode \e[0m"
sleep 1
echo -e "\e[1mTwitter:\e[0m \e[96mhttps://twitter.com/servinstaller \e[0m"
sleep 1.5
clear

echo "Pakete werden nun installiert..."
sleep 2
apt-get update && apt-get upgrade -y
clear

if [ ! '/usr/bin/screen' ]; then
  echo "Pakete werden nun installiert..."
  sleep 2
  clear
  apt-get install screen -y
  clear

fi

if [ ! '/etc/sudo' ]; then
  echo "Pakete werden nun installiert..."
  sleep 2
  clear
  apt-get install sudo
  clear

fi

sleep 1
echo -e "\e[36m֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎\e[0m"
echo -e "\e[36m֎ \e[0m        \e[1mTS3AudioBot Installer\e[0m        \e[36m֎ \e[0m"
echo -e "\e[36m֎ \e[0m          \e[1mVersion Beta v1.0 \e[0m         \e[36m֎ \e[0m"
echo -e "\e[36m֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎\e[0m"
echo -e "\e[36m֎                                      \e[36m֎ \e[0m"
echo -e "\e[36m֎ \e[0m \e[1m1. \e[0m Nötige Software installieren    \e[36m֎ \e[0m"
echo -e "\e[36m֎ \e[0m \e[1m2. \e[0m TS3AudioBot installieren        \e[36m֎ \e[0m"
echo -e "\e[36m֎ \e[0m \e[1m3. \e[0m Skript schließen                \e[36m֎ \e[0m"
echo -e "\e[36m֎                                      \e[36m֎ \e[0m"
echo -e "\e[36m֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎\e[0m"

echo ""
read -p "Wähle eine Nummer: " opt1

if [ "$opt1" = "1" ]; then

echo "Mono wird nun installiert..."
sleep 2
clear

sudo apt install apt-transport-https dirmngr gnupg ca-certificates -y
clear
echo "Mono wird nun installiert..."
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
clear
echo "Mono wird nun installiert..."
echo "deb https://download.mono-project.com/repo/debian stable-stretch main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
echo "Suche Updates..."
sudo apt update
clear
sleep 1
echo "Installiere Updates..."
sudo apt upgrade -you
clear
sleep 1

echo "Installiere Mono... Dies kann einen Moment dauern"
sudo apt install mono-devel -y
clear
echo -e "\e[1m\e[92mMono wurde erfolgreich installiert.\e[0m"
clear
sleep 2
echo -e "\e[1m\e[92mBeginne in 3 Sekunden mit der Installation der ffmpeg (zum Musikspielen)\e[0m"
sleep 1
clear
echo -e "\e[1m\e[92mBeginne in 2 Sekunden mit der Installation der ffmpeg (zum Musikspielen)\e[0m"
sleep 1
clear
echo -e "\e[1m\e[92mBeginne in 1 Sekunde mit der Installation der ffmpeg (zum Musikspielen)\e[0m"
clear
sleep 2
echo "Installiere ffmpeg... Dies kann einen Moment dauern"
sleep 2
sudo apt install libopus-dev ffmpeg -y
clear
echo -e "\e[1m\e[92mFFMPEG wurde erfolgreich installiert.\e[0m"
sleep 1
clear
fi

if [ "$opt1" = "2" ]; then
  clear
  echo "Hier soll der Minecraft Server deinstalliert werden!!"
  echo -e "\e[1m\e[92mBeispiel: /home/TS3AudioBot\e[0m"
  echo ""
  read -p "Wähle ein Verzeichnis: " ordner

  mkdir $ordner
  cd $ordner
  echo -e "\e[1m\e[92mVerzeichnis wurde erstellt. Beginne mit dem Download...\e[0m"
  sleep 1
  wget https://splamy.de/api/nightly/ts3ab/master/download
  mv download bot.zip
  unzip bot.zip
  clear
  sleep 2
  echo -e "\e[1m\e[92mDer Bot wurde installiert.\e[0m"
  echo "Dein Verzeichnis: $ordner"
  echo ""
  echo -e "\e[1m\e[92mEine genaue Anleitung zum Einrichten findest du hier:\e[0m"
  echo -e "\e[1m\e[92m-> https://server-installer.de/einrichtung/ts3audiobot\e[0m"
 fi
 
if [ "$opt1" = "3" ]; then
  clear
  echo "\e[1m\e[92mVielen Dank für das benutzen des Skripts!\e[0m"
fi

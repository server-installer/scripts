#!/bin/bash

echo ""
echo -e "\e[1mScript coded by server-installer.de - \e[93m7quit \e[0m"
sleep 1
echo -e "\e[1mTwitter:\e[0m \e[96mhttps://twitter.com/servinstaller \e[0m"
sleep 1.5
clear

echo "Packages will be now installed..."
sleep 2
apt-get update && apt-get upgrade -y
clear

if [ ! '/usr/bin/screen' ]; then
  echo "Screen will be now installed..."
  sleep 2
  clear
  apt-get install screen -y
  clear
fi

if [ ! '/usr/bin/tmux' ]; then
  echo "Screen will be now installed..."
  sleep 2
  clear
  apt-get install tmux -y
  clear
fi

sleep 1
echo -e "\e[36m֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎ \e[0m"
echo -e "\e[36m֎ \e[0m        \e[1mMinecraft installer \e[0m         \e[36m֎ \e[0m"
echo -e "\e[36m֎ \e[0m             \e[1mfor Debian 9 \e[0m           \e[36m֎ \e[0m"
echo -e "\e[36m֎ \e[0m          \e[1mVersion Beta v1.0 \e[0m         \e[36m֎ \e[0m"
echo -e "\e[36m֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎ \e[0m"
echo -e "\e[36m֎                                      \e[36m֎ \e[0m"
echo -e "\e[36m֎ \e[0m \e[1m1. \e[0m MC install                      \e[36m֎ \e[0m"
echo -e "\e[36m֎ \e[0m \e[1m2. \e[0m MC uninstall                    \e[36m֎ \e[0m"
echo -e "\e[36m֎ \e[0m \e[1m3. \e[0m Close the script                \e[36m֎ \e[0m"
echo -e "\e[36m֎                                      \e[36m֎ \e[0m"
echo -e "\e[36m֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎ \e[0m"

echo ""
read -p "Choose a number: " opt1

if [ "$opt1" = "1" ]; then

  clear
  echo -e "\e[36m֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎ \e[0m"
  echo -e "\e[36m֎ \e[0m           \e[1mWhich version \e[0m            \e[36m֎ \e[0m"
  echo -e "\e[36m֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎ \e[0m"
  echo -e "\e[36m֎                                      \e[36m֎ \e[0m"
  echo -e "\e[36m֎ \e[0m \e[1m1. \e[0m 1.8.9                           \e[36m֎ \e[0m"
  echo -e "\e[36m֎ \e[0m \e[1m2. \e[0m 1.9                             \e[36m֎ \e[0m"
  echo -e "\e[36m֎ \e[0m \e[1m3. \e[0m 1.11.2                          \e[36m֎ \e[0m"
  echo -e "\e[36m֎ \e[0m \e[1m4. \e[0m 1.13.2                          \e[36m֎ \e[0m"
  echo -e "\e[36m֎ \e[0m \e[1m5. \e[0m 1.14.4                          \e[36m֎ \e[0m"
  echo -e "\e[36m֎ \e[0m \e[1m6. \e[0m close the script                \e[36m֎ \e[0m"
  echo -e "\e[36m֎                                      \e[36m֎ \e[0m"
  echo -e "\e[36m֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎ \e[0m"
fi

if [ "$opt1" = "2" ]; then

  clear
  echo -e "For example: \e[1m/home/mc \e[0m"
  read -p "In which directory should the MC server be deleted? : " ordner
  cd $ordner
  clear
  echo -e "\e[1m\e[91mAre you sure that the folder should be deleted? \e[0m"
  read -p "yes | no: " deleted1
fi

if [ "$deleted1" = "yes" ]; then

  rm -r $ordner
  clear
  echo -e "\e[32m\e[1mThe folder was successfully deleted! \e[0m"
  sleep 3
  clear
  sleep 0.3
  echo ""
  echo -e "\e[1m\e[92mthank you for using the script! \e[0m"
  sleep 3
  clear
  exit 0
fi

if [ "$deleted1" = "no" ]; then
  clear
  sleep 0.3
  echo -e "\e[1m\e[92mthank you for using the script! \e[0m"
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

#----VERSION AUSSUCHEN----#
#----VERSION AUSSUCHEN----#

echo ""
read -p "Choose a number: " opt2


#echo ""
#read -p "Choose a number: " optspivan

#if [ "$optspivan" = "1" ]; then

#  clear
 # echo -e "\e[36m֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎ \e[0m"
  #echo -e "\e[36m֎ \e[0m           \e[1mWhich Server version \e[0m            \e[36m֎ \e[0m"
  #echo -e "\e[36m֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎ \e[0m"
  #echo -e "\e[36m֎                                      \e[36m֎ \e[0m"
  #echo -e "\e[36m֎ \e[0m \e[1m1. \e[0m spigot                           \e[36m֎ \e[0m"
  #echo -e "\e[36m֎ \e[0m \e[1m2. \e[0m vanilla                             \e[36m֎ \e[0m"
  #echo -e "\e[36m֎ \e[0m \e[1m3. \e[0m close the script                \e[36m֎ \e[0m"
  #echo -e "\e[36m֎                                      \e[36m֎ \e[0m"
  #echo -e "\e[36m֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎ \e[0m"
  #exit 0
#fi

if [ "$opt2" = "1" ]; then

  clear
  echo -e "MC version \e[1m\e[92m1.8.9 \e[0mwill be now installed."
  sleep 2
  clear
  echo -e "MC version \e[1m\e[92m1.8.9 \e[0mwill be now installed.."
  sleep 1
  clear
  echo -e "MC version \e[1m\e[92m1.8.9 \e[0mwill be now installed..."
  sleep 2
  clear
  echo -e "For example: \e[1m/home/mc \e[0m"
  read -p "Where should the MC server be created? : " ordner
  mkdir $ordner
  sleep 2
  cd $ordner
  clear
  wget https://cdn.getbukkit.org/spigot/spigot-1.8.8-R0.1-SNAPSHOT-latest.jar
  mv spigot-1.8.8-R0.1-SNAPSHOT-latest.jar spigot-1.8.9.jar
  echo "eula=true" >eula.txt
  echo "screen -S Minecraft-Server java -jar spigot-1.8.9.jar" >start.sh
  chmod 777 ./start.sh
  sleep 2
  clear
  echo -e "The \e[1meula.txt \e[0mand \e[1mstart.sh \e[0mhave just been provided for you!"
  sleep 2
  echo ""
  echo -e "\e[1m\e[92mthank you for using the script! \e[0m"
  exit 0
fi

if [ "$opt2" = "2" ]; then

  clear
  echo -e "MC version \e[1m\e[92m1.9 \e[0mwill be now installed."
  sleep 2
  clear
  echo -e "MC version \e[1m\e[92m1.9 \e[0mwill be now installed.."
  sleep 1
  clear
  echo -e "MC version \e[1m\e[92m1.9 \e[0mwill be now installed..."
  sleep 2
  clear
  echo -e "For example: \e[1m/home/mc \e[0m"
  read -p "Where should the MC server be created? : " ordner
  mkdir $ordner
  sleep 2
  cd $ordner
  clear
  wget https://cdn.getbukkit.org/spigot/spigot-1.9-R0.1-SNAPSHOT-latest.jar
  mv spigot-1.9-R0.1-SNAPSHOT-latest.jar spigot-1.9.jar
  echo "eula=true" >eula.txt
  echo "screen -S Minecraft-Server java -jar spigot-1.9.jar" >start.sh
  chmod 777 ./start.sh
  sleep 2
  clear
  echo -e "The \e[1meula.txt \e[0mand \e[1mstart.sh \e[0mhave just been provided for you!"
  sleep 2
  echo ""
  echo -e "\e[1m\e[92mthank you for using the script! \e[0m"
  exit 0
fi

if [ "$opt2" = "3" ]; then

  clear
  echo -e "MC version \e[1m\e[92m1.11.2 \e[0mwill be now installed."
  sleep 2
  clear
  echo -e "MC version \e[1m\e[92m1.11.2 \e[0mwill be now installed.."
  sleep 1
  clear
  echo -e "MC version \e[1m\e[92m1.11.2 \e[0mwill be now installed..."
  sleep 2
  clear
  echo -e "For example: \e[1m/home/mc \e[0m"
  read -p "Where should the MC server be created? : " ordner
  mkdir $ordner
  sleep 2
  cd $ordner
  clear
  wget https://cdn.getbukkit.org/spigot/spigot-1.11.2.jar
  echo "eula=true" >eula.txt
  echo "screen -S Minecraft-Server java -jar spigot-1.11.2.jar" >start.sh
  chmod 777 ./start.sh
  sleep 2
  clear
  echo -e "The \e[1meula.txt \e[0mand \e[1mstart.sh \e[0mhave just been provided for you!"
  sleep 2
  echo ""
  echo -e "\e[1m\e[92mthank you for using the script! \e[0m"
  exit 0
fi

if [ "$opt2" = "4" ]; then

  clear
  echo -e "MC version \e[1m\e[92m1.13.2 \e[0mwill be now installed."
  sleep 2
  clear
  echo -e "MC version \e[1m\e[92m1.13.2 \e[0mwill be now installed.."
  sleep 1
  clear
  echo -e "MC version \e[1m\e[92m1.13.2 \e[0mwill be now installed..."
  sleep 2
  clear
  echo -e "For example: \e[1m/home/mc \e[0m"
  read -p "Where should the MC server be created? : " ordner
  mkdir $ordner
  sleep 2
  cd $ordner
  clear
  wget https://cdn.getbukkit.org/spigot/spigot-1.13.2.jar
  echo "eula=true" >eula.txt
  echo "screen -S Minecraft-Server java -jar spigot-1.13.2.jar" >start.sh
  chmod 777 ./start.sh
  sleep 2
  clear
  echo -e "The \e[1meula.txt \e[0mand \e[1mstart.sh \e[0mhave just been provided for you!"
  sleep 2
  echo ""
  echo -e "\e[1m\e[92mthank you for using the script! \e[0m"
  exit 0
fi

if [ "$opt2" = "5" ]; then

  clear
  echo -e "MC version \e[1m\e[92m1.14.4 \e[0mwill be now installed."
  sleep 2
  clear
  echo -e "MC version \e[1m\e[92m1.14.4 \e[0mwill be now installed.."
  sleep 1
  clear
  echo -e "MC version \e[1m\e[92m1.14.4 \e[0mwill be now installed..."
  sleep 2
  clear
  echo -e "For example: \e[1m/home/mc \e[0m"
  read -p "Where should the MC server be created? : " ordner
  mkdir $ordner
  sleep 2
  cd $ordner
  clear
  wget https://cdn.getbukkit.org/spigot/spigot-1.14.4.jar
  echo "eula=true" >eula.txt
  echo "screen -S Minecraft-Server java -jar spigot-1.14.4.jar" >start.sh
  chmod 777 ./start.sh
  sleep 2
  clear
  echo -e "The \e[1meula.txt \e[0mand \e[1mstart.sh \e[0mhave just been provided for you!"
  sleep 2
  echo ""
  echo -e "\e[1m\e[92mthank you for using the script! \e[0m"
  exit 0
fi

if [ "$opt2" = "6" ]; then

  sleep 0.5
  clear
  sleep 0.3
  echo ""
  echo -e "\e[1m\e[92mthank you for using the script! \e[0m"
  sleep 3
  clear
  exit 0
fi

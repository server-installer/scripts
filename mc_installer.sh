#!/bin/bash

echo ""
echo -e "\e[1mScript coded by server-installer.de - \e[93m7quit \e[0m"
sleep 1
echo -e "\e[1mTwitter:\e[0m \e[96mhttps://twitter.com/servinstaller \e[0m"
sleep 1.5
clear

echo "Die Pakete werden nun installiert..."
sleep 2
apt-get update && apt-get upgrade -y
clear

if [ ! '/usr/bin/screen' ]; then
  echo "Screen wird nun installiert..."
  sleep 2
  clear
  apt-get install screen -y
  clear
fi

sleep 1
echo -e "\e[36m֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎ \e[0m"
echo -e "\e[36m֎ \e[0m        \e[1mMinecraft installer \e[0m         \e[36m֎ \e[0m"
echo -e "\e[36m֎ \e[0m             \e[1m Debian 9 \e[0m              \e[36m֎ \e[0m"
echo -e "\e[36m֎ \e[0m          \e[1mVersion Beta v1.1 \e[0m         \e[36m֎ \e[0m"
echo -e "\e[36m֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎ \e[0m"
echo -e "\e[36m֎                                      \e[36m֎ \e[0m"
echo -e "\e[36m֎ \e[0m \e[1m1. \e[0m MC installieren                 \e[36m֎ \e[0m"
echo -e "\e[36m֎ \e[0m \e[1m2. \e[0m MC löschen                      \e[36m֎ \e[0m"
echo -e "\e[36m֎ \e[0m \e[1m3. \e[0m Skript beenden                  \e[36m֎ \e[0m"
echo -e "\e[36m֎                                      \e[36m֎ \e[0m"
echo -e "\e[36m֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎ \e[0m"

echo ""
read -p "Wähle eine Nummer: " opt1

if [ "$opt1" = "1" ]; then

  clear
  echo -e "\e[36m֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎ \e[0m"
  echo -e "\e[36m֎ \e[0m           \e[1mWähle deine Version \e[0m      \e[36m֎ \e[0m"
  echo -e "\e[36m֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎ \e[0m"
  echo -e "\e[36m֎                                      \e[36m֎ \e[0m"
  echo -e "\e[36m֎ \e[0m \e[1m1. \e[0m 1.8.9                           \e[36m֎ \e[0m"
  echo -e "\e[36m֎ \e[0m \e[1m2. \e[0m 1.9                             \e[36m֎ \e[0m"
  echo -e "\e[36m֎ \e[0m \e[1m3. \e[0m 1.11.2                          \e[36m֎ \e[0m"
  echo -e "\e[36m֎ \e[0m \e[1m4. \e[0m 1.13.2                          \e[36m֎ \e[0m"
  echo -e "\e[36m֎ \e[0m \e[1m5. \e[0m 1.14.4                          \e[36m֎ \e[0m"
echo -e "\e[36m֎ \e[0m \e[1m3. \e[0m Skript beenden                    \e[36m֎ \e[0m"
  echo -e "\e[36m֎                                      \e[36m֎ \e[0m"
  echo -e "\e[36m֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎֎ \e[0m"
fi

if [ "$opt1" = "2" ]; then

  clear
  echo -e "Beispiel: \e[1m/home/mc \e[0m"
  read -p "In welchem Verzeichnis soll der MC-Server gelöscht werden? : " ordner
  cd $ordner
  clear
  echo -e "\e[1m\e[91mBist du sicher, dass der Ordner gelöscht werden soll? \e[0m"
  read -p "ja | nein: " deleted1
fi

if [ "$deleted1" = "ja" ]; then

  rm -r $ordner
  clear
  echo -e "\e[32m\e[1mDer Ordner wurde erfolgreich gelöscht! \e[0m"
  sleep 3
  clear
  sleep 0.3
  echo ""
  echo -e "\e[1m\e[92mVielen Dank für die Verwendung des Skripts! \e[0m"
  sleep 3
  clear
  exit 0
fi

if [ "$deleted1" = "nein" ]; then
  clear
  sleep 0.3
  echo -e "\e[1m\e[92mVielen Dank für die Verwendung des Skripts! \e[0m"
  sleep 3
  clear
  exit 0
fi

if [ "$opt1" = "3" ]; then

  sleep 0.5
  clear
  sleep 0.3
  echo ""
  echo -e "\e[1m\e[92mVielen Dank für die Verwendung des Skripts! \e[0m"
  sleep 3
  clear
  exit 0
fi

echo ""
read -p "Wähle eine Nummer: " opt2


if [ "$opt2" = "1" ]; then

  clear
  echo -e "MC Version \e[1m\e[92m1.8.9 \e[0mwird nun installiert."
  sleep 2
  clear
  echo -e "MC Version \e[1m\e[92m1.8.9 \e[0mwird nun installiert.."
  sleep 1
  clear
  echo -e "MC Version \e[1m\e[92m1.8.9 \e[0mwird nun installiert..."
  sleep 2
  clear
  echo -e "Beispiel: \e[1m/home/mc \e[0m"
  read -p "Wo soll der MC-Server angelegt werden? : " ordner
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
  echo -e "Die \e[1meula.txt \e[0mund die \e[1mstart.sh \e[0mwurde erfolgreich erstellt!"
  sleep 2
  echo ""
  echo -e "\e[1m\e[92mVielen Dank für die Verwendung des Skripts! \e[0m"
  exit 0
fi

if [ "$opt2" = "2" ]; then

  clear
  echo -e "MC Version \e[1m\e[92m1.9 \e[0mwird nun installiert."
  sleep 2
  clear
  echo -e "MC version \e[1m\e[92m1.9 \e[0mwird nun installiert.."
  sleep 1
  clear
  echo -e "MC version \e[1m\e[92m1.9 \e[0mwird nun installiert..."
  sleep 2
  clear
  echo -e "Beispiel: \e[1m/home/mc \e[0m"
  read -p "Wo soll der MC-Server angelegt werden? : " ordner
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
  echo -e "Die \e[1meula.txt \e[0mund die \e[1mstart.sh \e[0mwurde erfolgreich erstellt!"
  sleep 2
  echo ""
  echo -e "\e[1m\e[92mVielen Dank für die Verwendung des Skripts! \e[0m"
  exit 0
fi

if [ "$opt2" = "3" ]; then

  clear
  echo -e "MC Version \e[1m\e[92m1.11.2 \e[0mwird nun installiert."
  sleep 2
  clear
  echo -e "MC Version \e[1m\e[92m1.11.2 \e[0mwird nun installiert.."
  sleep 1
  clear
  echo -e "MC Version \e[1m\e[92m1.11.2 \e[0mwird nun installiert..."
  sleep 2
  clear
  echo -e "Beispiel: \e[1m/home/mc \e[0m"
  read -p "Wo soll der MC-Server angelegt werden? : " ordner
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
  echo -e "Die \e[1meula.txt \e[0mund die \e[1mstart.sh \e[0mwurde erfolgreich erstellt!"
  sleep 2
  echo ""
  echo -e "\e[1m\e[92mVielen Dank für die Verwendung des Skripts! \e[0m"
  exit 0
fi

if [ "$opt2" = "4" ]; then

  clear
  echo -e "MC Version \e[1m\e[92m1.13.2 \e[0mwird nun installiert."
  sleep 2
  clear
  echo -e "MC Version \e[1m\e[92m1.13.2 \e[0mwird nun installiert.."
  sleep 1
  clear
  echo -e "MC Version \e[1m\e[92m1.13.2 \e[0mwird nun installiert..."
  sleep 2
  clear
  echo -e "Beispiel: \e[1m/home/mc \e[0m"
  read -p "Wo soll der MC-Server angelegt werden? : " ordner
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
  echo -e "Die \e[1meula.txt \e[0mund die \e[1mstart.sh \e[0mwurde erfolgreich erstellt!"
  sleep 2
  echo ""
  echo -e "\e[1m\e[92mVielen Dank für die Verwendung des Skripts! \e[0m"
  exit 0
fi

if [ "$opt2" = "5" ]; then

  clear
  echo -e "MC Version \e[1m\e[92m1.14.4 \e[0mwird nun installiert."
  sleep 2
  clear
  echo -e "MC Version \e[1m\e[92m1.14.4 \e[0mwird nun installiert.."
  sleep 1
  clear
  echo -e "MC Version \e[1m\e[92m1.14.4 \e[0mwird nun installiert..."
  sleep 2
  clear
  echo -e "Beispiel: \e[1m/home/mc \e[0m"
  read -p "Wo soll der MC-Server angelegt werden? : " ordner
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
  echo -e "Die \e[1meula.txt \e[0mund die \e[1mstart.sh \e[0mwurde erfolgreich erstellt!"
  sleep 2
  echo ""
  echo -e "\e[1m\e[92mVielen Dank für die Verwendung des Skripts! \e[0m"
  exit 0
fi

if [ "$opt2" = "6" ]; then

  sleep 0.5
  clear
  sleep 0.3
  echo ""
  echo -e "\e[1m\e[92mVielen Dank für die Verwendung des Skripts! \e[0m"
  sleep 3
  clear
  exit 0
fi

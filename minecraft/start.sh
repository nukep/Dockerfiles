#!/bin/sh

if [ ! -e /data/eula.txt ]; then

  if [ -t 1 ]; then

    # Prompt the user for an agreement
    
    echo "You need to agree to the EULA in order to run the server."
    echo "By entering 'y', you are agreeing to the EULA (https://account.mojang.com/documents/minecraft_eula)."
    
    read -p "Agree? [y/N] " AGREE
    
    case $AGREE in
      Y*|y*) echo "eula=true" > /data/eula.txt;;
      *) exit 1;;
    esac
  else
    echo "You need to agree to the EULA in order to run the server."
    echo "By appending eula=true to eula.txt, you are agreeing to the EULA (https://account.mojang.com/documents/minecraft_eula)."
    echo "Alternatively, re-run the Docker container with the -it options to be prompted."
    exit 1
  fi
fi

exec java $JVM_OPTS -jar /minecraft_server.jar nogui
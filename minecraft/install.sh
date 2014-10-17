#!/usr/bin/env bash

cd /

wget -q https://s3.amazonaws.com/Minecraft.Download/versions/$VERSION/minecraft_server.$VERSION.jar

ln -s minecraft_server.$VERSION.jar minecraft_server.jar


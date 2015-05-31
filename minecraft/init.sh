#!/bin/sh

# Make the /data directory owned by the `minecraft` user.
chown -R minecraft:minecraft /data
chmod +rw /data

exec su -c /start.sh minecraft

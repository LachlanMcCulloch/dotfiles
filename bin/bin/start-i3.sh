#!/bin/sh
DROPBOX_DAEMON=~/.dropbox-dist/dropboxd

if [ -f $DROPBOX_DAEMON ]; then
    $DROPBOX_DAEMON &
fi

I3_CONFIG_CREATE=~/.i3/i3-create-config/create_config

if [ -f $I3_CONFIG_CREATE ]; then
    $I3_CONFIG_CREATE
    # Start i3
    exec i3
else
    exit 1
fi



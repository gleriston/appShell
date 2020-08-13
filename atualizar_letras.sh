#!/bin/sh

SERVICE='gmusicbrowser'
while true; do
if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
dbus-send --dest=org.gmusicbrowser /org/gmusicbrowser org.gmusicbrowser.RunCommand string:NextSong &
sleep 3
fi
done


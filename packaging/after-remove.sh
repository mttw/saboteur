#!/usr/bin/env bash

userdel -r saboteur

if [ "$1" = purge ]; then
    update-rc.d saboteur-agent remove
fi

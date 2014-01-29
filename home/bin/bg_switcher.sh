#!/bin/sh

while true; do
    #find "/home/matthew/data/images/Europe 2011/" -print0 -type f -name '*.jpg' -o -name '*.png' |
    find "/home/matthew/data/backgrounds/current" -print0 -type f -name '*.jpg' -o -name '*.png' |
        shuf -n1 -z | xargs -0 feh --bg-fill
    sleep 15m
done

#!/bin/bash
#a script with my presets in handbrake! first command line argument is the input file,
#second is the output.

HandBrakeCLI -e x264  -q 15 -E copy -B 320 -R Auto -f mkv  --subtitle scan -F --native-language eng --deblock --detelecine --decomb --loose-anamorphic -m --x264-preset veryslow --x264-tune $3 --h264-profile high --h264-level 4.2 --main-feature -i $1 -o $2

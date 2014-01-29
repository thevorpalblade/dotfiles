#!/bin/bash
#a script with my presets in handbrake! first command line argument is the input file,
#second is the output.

HandBrakeCLI -e x264  -q $4 -E copy -B 320 -R Auto -f mkv  --subtitle scan -F --native-language eng --deblock --detelecine --decomb --loose-anamorphic -m -x preset=veryslow:profile=high444:tune=$3 --main-feature -i $1 -o $2

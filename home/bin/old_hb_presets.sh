#!/bin/bash
#a script with my presets in handbrake! first command line argument is the input file,
#second is the output.

HandBrakeCLI -e x264  -q 20.0 -E copy -B 320 -R Auto -f mkv  --subtitle scan -F --native-language eng --deblock --detelecine --decomb --loose-anamorphic -m -x b-adapt=2:rc-lookahead=50:ref=5:b-pyramid=1:me=umh:subme=8:no-fast-pskip=1:bframes=5:direct=auto:psy-rd=1,0.2:deblock=1,1 --main-feature -i $1 -o $2

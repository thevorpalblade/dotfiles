# Some handy ssh aliases
alias knuth='ssh -Y mlawson@knuth.cs.hmc.edu'
alias darthvader='ssh matthew@darthvader.st.hmc.edu'
alias freyja='ssh -Y mlawson@freyja.st.hmc.edu'
alias imura='ssh root@imura.st.hmc.edu'
alias odin='ssh -Y mlawson@odin.ac.hmc.edu'
alias oldin='ssh -Y mlawson@oldin.ac.hmc.edu'
alias hipp='ssh -Y mlawson@hipparchus.physics.hmc.edu'
alias vulcan='ssh -Y mlawson@vulcan.ca.sandia.gov'
alias yamato='ssh -p 28 matthew@farragut.drunkensailor.org'
alias k7='ssh -p 24 root@farragut.drunkensailor.org'
alias stargazer='ssh -Y matthew@stargazer'
alias born='ssh -Y lawson@born.physics.ucdavis.edu'
alias physics='ssh -Y lawson@ms.physics.ucdavis.edu'
alias enterprise="ssh -p 26 -Y matthew@enterprise.drunkensailor.org"
alias osa="ssh -Y thevorpalblade@opensourceadventures.com"
alias york="ssh -Y -p 30 matthew@farragut.drunkensailor.org"

# make upgrading easier
alias dist-upgrade='sudo pacman -Syu'
alias install='sudo pacman -S'
alias search='pacman -Ss'

# handy
alias gnuplot='rlwrap gnuplot'
alias bc='orpie'
alias mplayerhd='/home/matthew/mplayer-vdpau-3263604/mplayer-vdpau/mplayer -vo vdpau -vc ffh264vdpau'
alias root='root -l'

alias mps='mpc playlist -f " [%position%) %artist% - %title%]" | grep -i'
alias playlist='mpc playlist -f " [%position%) %artist% - %title%] "'

alias hbc='HandBrakeCLI -e x264  -q 20.0 -a 1,1 -E ac3 -B 320 -R Auto -f mkv --detelecine --decomb --loose-anamorphic -m -x b-adapt=2:rc-lookahead=50:ref=5:b-pyramid=1:me=umh:subme=8:no-fast-pskip=1:bframes=5:direct=auto:psy-rd=1,0.2:deblock=1,1'


alias naut="nautilus --no-desktop &"
alias pylab="ipython --pylab"

alias 8="ping 8.8.8.8"

alias igor="wine .wine/drive_c/Program\ Files\ \(x86\)/WaveMetrics/Igor\ Pro\ Folder/Igor.exe"

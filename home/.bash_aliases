# Some handy ssh aliases
alias knuth='ssh -Y mlawson@knuth.cs.hmc.edu'
alias darthvader='ssh matthew@darthvader.st.hmc.edu'
alias freyja='ssh -Y mlawson@freyja.st.hmc.edu'
alias imura='ssh root@imura.st.hmc.edu'
alias odin='ssh -Y mlawson@odin.ac.hmc.edu'
alias oldin='ssh -Y mlawson@oldin.ac.hmc.edu'
alias hipp='ssh -Y mlawson@hipparchus.physics.hmc.edu'
alias vulcan='ssh -Y mlawson@vulcan.ca.sandia.gov'
alias farragut='ssh -Y matthew@farragut'
alias k7='ssh -p 24 root@k7'
alias stargazer='ssh -Y matthew@stargazer'
alias born='ssh -Y lawson@born.physics.ucdavis.edu'
alias physics='ssh -Y lawson@ms.physics.ucdavis.edu'
alias osa='ssh thevorpalblade@opensourceadventures.com'
alias york='ssh -Y -p 28 matthew@enterprise.drunkensailor.org'
alias yamato='ssh -Y -p 30 matthew@enterprise.drunkensailor.org'
alias enterprise="ssh -Y -p 26 matthew@enterprise.drunkensailor.org"
alias pines='ssh currolab@192.168.11.9'


# make upgrading easier
alias dist-upgrade='sudo pacman -Syu'
alias install='sudo pacman -S'
alias search='pacman -Ss'

# handy
#alias gnuplot='rlwrap gnuplot'
alias bc='orpie'
alias mplayerhd='/home/matthew/mplayer-vdpau-3263604/mplayer-vdpau/mplayer -vo vdpau -vc ffh264vdpau'

alias mps='mpc playlist -f " [%position%) %artist% - %title%]" | grep -i'
alias playlist='mpc playlist -f " [%position%) %artist% - %title%] "'
alias mpf='echo /mnt/data/Music/`mpc --format %file% | head -1`'


alias hbc='HandBrakeCLI -e x264  -q 20.0 -a 1,1 -E ac3 -B 320 -R Auto -f mkv --detelecine --decomb --loose-anamorphic -m -x b-adapt=2:rc-lookahead=50:ref=5:b-pyramid=1:me=umh:subme=8:no-fast-pskip=1:bframes=5:direct=auto:psy-rd=1,0.2:deblock=1,1'


alias naut="nautilus --no-desktop &"
alias pylab="ipython --pylab=qt"

#wake on lan commands
alias wake_enterprise="wol -i enterprise bc:5f:f4:37:f3:51"
alias wake_york="wol -i york 00:1d:60:be:fc:62"
alias wake_farragut="wol -i farragut 90:fb:a6:3d:02:de"

#test internet
alias 8="ping 8.8.8.8"

#transmission on farragut
alias trc='transmission-remote-cli -c enterprise:9091'

# ssh-add only on first ssh use:
ssh-add -l >/dev/null || alias ssh='ssh-add -l >/dev/null || ssh-add && unalias ssh; ssh'


alias steam="env LD_PRELOAD='/usr/$LIB/libstdc++.so.6 /usr/$LIB/libgcc_s.so.1 /usr/$LIB/libxcb.so.1 /usr/$LIB/libgpg-error.so' /usr/bin/steam"

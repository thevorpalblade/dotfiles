#! /bin/bash
find "$1" -name *.flac -print0 | while read -d $'\0' IF
do
  OF=$(echo "$IF" | sed -e 's/\.flac$/.mp3/g' -e "s,$1,$2,g")
  echo "$IF -> $OF"
  mkdir -p "${OF%/*}"

  ARTIST=`metaflac "$IF" --show-tag=ARTIST | sed s/.*=//g`
  TITLE=`metaflac "$IF" --show-tag=TITLE | sed s/.*=//g`
  ALBUM=`metaflac "$IF" --show-tag=ALBUM | sed s/.*=//g`
  GENRE=`metaflac "$IF" --show-tag=GENRE | sed s/.*=//g`
  TRACKNUMBER=`metaflac "$IF" --show-tag=TRACKNUMBER | sed s/.*=//g`
  DATE=`metaflac "$IF" --show-tag=DATE | sed s/.*=//g`

  flac -c -d "$IF" 2> /dev/null | lame --replaygain-fast -V 0  - "$OF" 2> /dev/null
  id3 -t "$TITLE" -T "${TRACKNUMBER:-0}" -a "$ARTIST" -A "$ALBUM" -y "$DATE" -g "${GENRE:-12}" "$OF"
done


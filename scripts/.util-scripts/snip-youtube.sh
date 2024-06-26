#!/bin/bash
default=mkv
VIDEOFORMAT=${4:-$default}
2>/dev/null 1>&2 youtube-dl --no-playlist --recode-video $VIDEOFORMAT -o tempoutput $1
2>/dev/null 1>&2 ffmpeg -i tempoutput.$VIDEOFORMAT -vcodec copy -acodec copy -ss $2 -to $3 output.$VIDEOFORMAT
rm tempoutput.$VIDEOFORMAT

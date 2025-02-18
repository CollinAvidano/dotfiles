#!/bin/bash
default=m4a
AUDIOFORMAT=${4:-$default}
rm output.*
2>/dev/null 1>&2 youtube-dl --no-playlist --extract-audio --audio-format $AUDIOFORMAT -o "tempoutput.%(ext)s" $1
2>/dev/null 1>&2 ffmpeg -i tempoutput.$AUDIOFORMAT -vcodec copy -acodec copy -ss $2 -to $3 output.$AUDIOFORMAT
rm tempoutput.$AUDIOFORMAT

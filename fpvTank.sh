ssh pi@172.20.10.3 "raspivid -w 640 -h 480 -drc high -fps 60 -qp 30 -b 0 -t 0 -o -" | mplayer -fs -fps 60 -demuxer h264es -

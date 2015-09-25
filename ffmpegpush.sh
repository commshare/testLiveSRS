#!/bin/bash
#!/bin/bash
IP=192.168.10.33
#52.69.64.240
#srs.ixiaomo.net
#52.69.64.240
#localhost
STORE=/home/zhangbin/xlive/rtmppush/testak201/20051210-w50s.flv
#/home/zhangbin/alex/Downloads/testVideos/vod
NAME=
#play_trailer.html-rtmp_video_gz3goij33q2.flv
FILE=$STORE
#/$NAME

for((;;)); do
            ffmpeg -re -i $FILE -vcodec copy -acodec copy -f flv -y rtmp://$IP/live/liveStream
                sleep 1
 done


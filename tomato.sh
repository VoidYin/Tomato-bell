#!/bin/sh    
sleep_min=25
if [ -n "$1" ];then
    sleep_min=$1
fi
sleep_second=`expr $sleep_min \* 60`
echo "番茄钟启动,时间是$sleep_min分钟"
sleep $sleep_second
echo "番茄钟完成"
eog -f time.jpg & 
play time.mp3 1>/dev/null 2>&1 &

#!/bin/sh    
sleep_min=25
if [ -n "$1" ];then
    sleep_min=$1
fi
sleep_second=`expr $sleep_min \* 60`
echo "番茄钟启动,时间是$sleep_min分钟\n"
sleep $sleep_second
echo "番茄钟完成\n"
# 要试着获取当前脚本的路径，因为执行这个脚本不一定在这个同级目录下面
dir=`dirname $0`
eog -f "$dir/time.jpg" & 
play "$dir/time.mp3" 1>/dev/null 2>&1 &

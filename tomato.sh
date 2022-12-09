#!/bin/bash    

set -ue

sleeptime1=$((25*60))
sleeptime2=$((5*60))

#sleeptime1=$((10))
#sleeptime2=$((5))

dir=`dirname $0`

timer1(){
        sleep $sleeptime1
        feh -F "${dir}/time.jpg" >/dev/null 2>&1 &
}

timer2(){
        sleep $sleeptime2
        pkill -f feh
        play ${dir}/time.mp3
}

echo "番茄钟启动 `date +"%Y.%m.%d %T"`"

while true ; do
        timer1
        timer2
done


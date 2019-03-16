# Tomato-bell
一个番茄钟的shell脚本，当番茄事件结束的时候，出现一张图片和铃声
使用方法:./tomato.sh [time] &
默认的时间是25分钟，可以提供其他的时间



建议在bashrc里面建立这个命令的缩写alias，这样可以直接用to 40 或者 to 来使用命令


alias to='function __tomato() { ~/shellproject/tomatoBell/tomato.sh $1 &  unset -f __tomato; }; __tomato'

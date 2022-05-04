# Tomato-bell
一个番茄钟的shell脚本，当番茄事件结束的时候，出现一张图片

一、使用方法:  
./tomato.sh &  
默认的时间是25分钟


建议在~/.bashrc里面建立这个命令的alias  
alias to='~/bin/Tomato-Bell/tomato.sh'  
之后运行命令直接to&即可  

二、停止番茄钟的方法  
有两种方法：  
（一）  
1.使用jobs命令获取jobid  
2.kill %jobid  

（二）  
1.使用ps -ef | grep tomato 获取进程pid  
2.kill pid  


三、依赖  
显示图片使用的是feh,所以需要先安装feh  

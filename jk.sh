#!/bin/bash

#定期监控是否需要重启
while true
do
	read nowtime < <(date +%s)

	RESULT=$(curl -s http://m.bufanyun.cn/index/ajax/nodeRestart);
	if [ $RESULT == "1" ] ;
    then
		curl -s http://m.bufanyun.cn/index/ajax/nodeRestartCallback && vpn restart;
	fi

    echo "监控重启进程运行中..";
	sleep 30
done
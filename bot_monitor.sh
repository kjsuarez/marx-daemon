#!/bin/bash

if pgrep -f marx_daemon.rb; then
	PROID=$(pgrep -f marx_daemon.rb)
        echo "daemon already running `date`" > logs/monitor.log
        echo I see him running
	DAEMON_STATE="$(ps -q $PROID -o state --no-headers)"
	if [[ $DAEMON_STATE =~ "S" ]]; then 
		echo existing process is sleeping
		# kill $PROID
		# exec ruby marx_daemon.rb >> logs/marx_daemon.log 2>&1 &
	else 
		echo not sleeping; 
	fi
else
	echo "I don't see him running"
        echo "starting daemon at `date` from `pwd` as `whoami`" > logs/monitor.log
        exec ruby marx_daemon.rb >> logs/marx_daemon.log 2>&1 &
fi

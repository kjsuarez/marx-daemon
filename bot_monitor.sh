#!/bin/bash

if pgrep -f marx_daemon.rb; then
	PROID=$(pgrep -f marx_daemon.rb)
        echo "daemon already running `date`" > monitor.log
        echo I see him running
	DAEMON_STATE="$(ps -q $PROID -o state --no-headers)"
	if [[ $DAEMON_STATE =~ "S" ]]; then 
		kill $PROID
		exec ruby marx_daemon.rb >> marx_daemon.log 2>&1 &
	else 
		echo not sleeping; 
	fi
else
	echo "I don't see him running"
        echo "starting daemon at `date` from `pwd` as `whoami`" > monitor.log
        exec ruby -C /home/orangepi/code/ruby/marx-daemon marx_daemon.rb >> marx_daemon.log 2>&1 &
fi

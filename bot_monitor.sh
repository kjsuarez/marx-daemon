#!/bin/bash

if pgrep -f marx_daemon.rb
then
        echo "daemon already running `date`" > monitor.log
        echo I see him running
else
        echo "starting daemon at `date` from `pwd` as `whoami`" > monitor.log
        echo "I don't see him running"
        exec ruby marx_daemon.rb >> marx_daemon.log 2>&1 &
fi

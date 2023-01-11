#!/bin/bash

echo "bundle: `which bundle`" > monitor.log
if ruby ~/Code/marx-daemon/daemon_controller.rb status 
then
	echo "daemon already running `date`" > monitor.log
	echo I see him running
else
	echo "starting daemon at `date` from `pwd` as `whoami`" > monitor.log
	echo "I don't see him running"
	bundle exec ruby ~/Code/marx-daemon/daemon_controller.rb start
fi	

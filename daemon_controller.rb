#$stdout.reopen("daemon_controller.log","w")
#$stderr.reopen("daemon_controller_err.log","w")
puts "standard out goes here at #{Time.now}"
require 'daemons'
puts "got past daemon requirement"

Daemons.run('~/Code/marx-daemon/marx_daemon.rb')

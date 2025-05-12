#$stdout.reopen("daemon.log","w")
#$stderr.reopen("daemon_err.log","w")

puts "Running marxbot at #{Time.now}"

require "marxbot"
require 'dotenv/load'
puts "completed requirements"

bot = MarxBot.new(token: ENV['BOT_TOKEN'], auto_stop: false, stop_time: 60*15)

bot.run

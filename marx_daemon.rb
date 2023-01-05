require "marxbot"
require 'dotenv/load'
# while true
  bot = MarxBot.new(token: ENV['BOT_TOKEN'])

  begin
    bot.run
    puts "Marxbot closed"
    sleep(5)
  rescue Exception => e
    puts "OOP! Bot encountered error: #{e}"
    sleep(5)
    bot = MarxBot.new(token:"NzAzNzg3MjU0ODIwMjQxNDQ4.G2ZlUt.hyJ9lK9RqWfHYxhjjyglsM0-sFam1EKsmc1G6E")
    bot.run
  end

# end

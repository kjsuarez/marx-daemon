while true
  sleep(70)
  File.write("daemon_test_log.txt", "I'm a long running process, now I die - #{Time.now}\n", mode:"a")
  raise "Shit the bed"
end

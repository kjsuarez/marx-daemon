## What is this
The idea here is to provide an automatic process for running a discord bot (based on the [discordrb](https://github.com/shardlab/discordrb) gem) in the background and logging its output appropriately. Logs are periodically cleaned up to avoid memory issues.
### Accessing to cron jobs
`crontab -e`

### Detect running ruby processes
`ps -e | grep ruby`

### suggested cron lines
```
# every hour
0 */1 * * * cd /path/to/marx-daemon/logs; rm marx_daemon.log; rm cron.log; rm monitor.log

# every ten minutes
*/10 * * * * export PATH="$HOME/.rbenv/shims:$PATH"; cd /path/to/marx-daemon; ./bot_monitor.sh >> logs/cron.log 2>&1
```

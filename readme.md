 
## CRONTAB BIRTHDAYS!

1. Fill in the TODO sections in `cron_mail.csh` and modify `dates.txt` with birthday data. The format can be inferred by looking at the file itself.
2. Run (one time):<br>
    `crontab /path/to/cron.job`<br>
   <b>Note:</b> The cron job is set to run at 8AM every morning.
3. Run `crontab -l` to confirm that the script is running in background.
4. Run `crontab -r` to kill the script.

You can learn more about crontab at:
https://tecadmin.net/crontab-in-linux-with-20-examples-of-cron-schedule/

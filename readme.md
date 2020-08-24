 
## CRONTAB BIRTHDAYS!

This repository contains a small script I wrote during my initial days at TI. We mainly communicated over email, hence `mailx`. I initially deployed this system in January 2019, when we had about 45 members. At the end of every month we went out for a team lunch, courtesy of the members whose birthdays fell in the previous month. By the end of 2019 we had visited most localities around Indira Nagar, Bengaluru.

### Readme
1. Fill in the TODO sections in `cron_mail.csh` and modify `dates.txt` with birthday data. The format can be inferred by looking at the file itself. The file will have to be manually updated everytime someone joins or leaves the team.
2. Run (one time):<br>
    `crontab /path/to/cron.job`<br>
   <b>Note:</b> The cron job is set to run at 8AM every morning.
3. Run `crontab -l` to confirm that the script is running in background.
4. Run `crontab -r` to kill the script.

You can learn more about crontab at:
https://tecadmin.net/crontab-in-linux-with-20-examples-of-cron-schedule/



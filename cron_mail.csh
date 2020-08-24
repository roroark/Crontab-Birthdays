################################################################
#
#   Script: Crontab Birthday Emails
#   Author: A0230289
#
################################################################
#
#   V1.2
#       Added support for multiple birthdays in one day.
#

#TODO:
#Set the below fields. I set the 'from_email' to the mail-list which is CCed.
set birthday_data = /path/to/dates.txt
set mail_list     = team@company.com
set admin_email   = birthday-admin@company.com

set today = `date +%d-%b`
set birthdays_today = `grep -v "#" $birthday_data | grep -c $today`
if ($birthdays_today > 0) then
    set employee_ids = `grep -v "#" $birthday_data | grep  $today | awk '{print $1}'`
    foreach employee_id (`echo $employee_ids`)
        set name = `grep -v "#" $birthday_data | grep  $employee_id | awk '{print $2}' | tr '_' ' '`
        set personal_email_id =  `de $employee_id | grep "Email address" | awk '{print $NF}'`
        echo "" | mailx -r $mail_list -s "[Birthday Bot] Happy Birthday $name!" -c $mail_list $personal_email_id
    end
else
    echo "" | mailx -r $mail_list -s "[Birthday Bot] No birthday today." $admin_email
endif


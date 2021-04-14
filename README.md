#### A small Python script for automating pre-termination cPanel backups.

 * Create a directory for store backups ```/home/terminationbackups/``` 
 * Put scripts under ```/usr/local/sbin/``` 
 * Make sure that your script has the appropriate executable permission ```/usr/local/sbin/script.py```
 * Add this line in ```/usr/local/cpanel/scripts/prekillacct```
 ```/usr/local/sbin/terminationbackup.py "$@"```

 * Also you can use [cpanel_pre-termination-backup-sync.sh](https://github.com/yigitgokcu/cpanel-pre-termination-backup/blob/main/cpanel_pre-termination-backup-sync.sh) script with a cronjob for send & sync backups to remote destination via FTP.

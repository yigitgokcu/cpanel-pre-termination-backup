#!/bin/bash

HOST='IP'
USER='username'
PASSWD='password'
ldir='/path/to/terminationbackups'

cd $ldir
day=$(date +"%d")
month=$(date +"%m")
year=$(date +"%Y")
host=$(hostname)

declare -a arrName
declare -a arrUser
for file in *.tar.gz
do
    arrName=("${arrName[@]}" "$file")
    user=$(echo $file| sed -e 's/.*-//;s/.tar.*//')
    arrUser=("${arrUser[@]}" "$user")
    ftp -n $HOST << EOF
        quote USER $USER
        quote PASS $PASSWD
        lcd $ldir
        cd $host
        mkdir $user
        cd $user
        put $file
        quit
EOF
done

cd $ldir
rm -f *.tar.gz

exit 0

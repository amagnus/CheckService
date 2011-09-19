#!/bin/bash
DATE=`date`

if cat /var/log/mail.log | grep clamdscan | tail -n 1 | grep 'corrupt or unknown clamd scanner error or memory/resource/perms problem'
then
        /etc/init.d/clamav-daemon restart
        echo "$DATE Clamav NOT OK, restarted"
fi


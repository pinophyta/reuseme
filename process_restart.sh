#!/bin/bash

PRCSNAME = ""

echo -n "$(date +"%T") Starting Planned $PRCSNAME Restart" >> /tmp/$PRCSNAME_restartlog.log
/etc/init.d/$PRCSNAME restart 2>&1 >> /
sleep 40
echo -e "$(date +"%T") \c" >> /tmp/$PRCSNAME_restartlog.log
/etc/init.d/$PRCSNAME status 2>&1 >> /root/scripts/jenkins_reboot.log
echo -n "======================================================================================="

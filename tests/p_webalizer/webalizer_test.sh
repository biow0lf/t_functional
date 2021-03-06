#!/bin/sh
# Author: Athmane Madjoudj <athmanem@gmail.com>

t_Log "Running $0 - Webalizer test."

# Run some requests 
for i in `seq 10`
do
    curl http://localhost/ > /dev/null 2>&1
done

# Trigger webalizer cron manualy
/etc/cron.daily/00webalizer

# Run the test
curl -s http://localhost/usage/ | grep 'Usage Statistics for' > /dev/null 2>&1

t_CheckExitStatus $?

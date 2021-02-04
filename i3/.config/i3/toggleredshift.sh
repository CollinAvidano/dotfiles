#!/bin/bash
if pgrep -x redshift > /dev/null ; then
    pkill redshift
    pkill geoclue
else
    nohup redshift < /dev/null > /dev/null 2>&1 &
fi

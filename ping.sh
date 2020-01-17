#!/bin/bash
host=$1
#set -xv
function pingcheck
{
        ping -c 1 -w 2 $host > junk
        if [ $? -eq 0 ]
        then
            echo "HOST IS UP"
            exit 0
        else
            echo "HOST IS DOWN"
            exit 1
        fi
}

pingcheck

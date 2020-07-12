#!/bin/sh

if test "$1" = "--help" || test "$1" = "-h"; then
    echo "Usage: $0 [mount point]..."
    echo
    exit
fi

if test -x $(which linux_logo); then linux_logo -l; fi
echo

(
    echo -n "Uptime:ﮣ:"
    uptime -p

    echo -n "Load averages::"
    cat /proc/loadavg

    echo -n "Free memory::"
    free -h | head -n 2 | tail -n 1 | awk '{ print $7 }'

    echo -n "Free swap:易:"
    free -h | tail -n 1 | awk '{ print $4}'

    echo -n "Free space on /::"
    df -h / | tail -n 1 | awk '{ print $4 }'

    while test -n "$1"; do
        echo -n "Free space on $1::"
        df -h $1 | tail -n 1 | awk '{ print $4 }'
        shift
    done

    echo
) | column -t -s ":"

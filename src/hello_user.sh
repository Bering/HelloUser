#!/bin/sh
# 
# hello_user
# Tiny script that displays linux_logo banner and some useful info
# by Bering <bering@ringlogic.com>
# 

if test "$1" = "--help" || test "$1" = "-h"; then
    echo "Usage: $0 [--no-logo] [--no-icons] [mount point]..."
    echo
    exit
fi

if test "$1" = "--no-logo"; then
    showlogo=false
    shift
else
    showlogo=true
fi

if test "$1" = "--no-icons"; then
    showicons=false
    shift
else
    showicons=true
fi

if $showlogo && test -x $(which linux_logo); then
	linux_logo -l
	echo
fi

(
    echo -n "Uptime:"
    if $showicons; then echo -n "ﮣ:"; fi
    uptime -p

    echo -n "Load averages:"
    if $showicons; then echo -n ":"; fi
    cat /proc/loadavg

    echo -n "Free memory:"
    if $showicons; then echo -n ":"; fi
    free -h | head -n 2 | tail -n 1 | awk '{ print $7 }'

    echo -n "Free swap:"
    if $showicons; then echo -n "易:"; fi
    free -h | tail -n 1 | awk '{ print $4}'

    echo -n "Free space on /:"
    if $showicons; then echo -n ":"; fi
    df -h / | tail -n 1 | awk '{ print $4 }'

    while test -n "$1"; do
        echo -n "Free space on $1:"
        if $showicons; then echo -n ":"; fi
        df -h $1 | tail -n 1 | awk '{ print $4 }'
        shift
    done

    echo
) | column -t -s ":"

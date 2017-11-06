#!/bin/bash
XTERM_W=122
XTERM_H=36
MONITOR_W=2480
MONITOR_H=2640
WIDTH=$((MONITOR_W/2))
HEIGHT=$((MONITOR_H/2))

n=$1
echo "Getting $n windows"
if [ "$n" -eq "2" ]; then
    xterm -geometry "$XTERM_W"x"$((XTERM_H*2))"+0+0&
    xterm -geometry "$XTERM_W"x"$((XTERM_H*2))"+"$WIDTH"+0&
else
    while [ "$n" -gt "0" ]
    do
        if [ $((n/4)) -gt "0" ];then
            t=4
        else
            t=$((n%4))
        fi
        for((i=1;i<=t;i+=1));do
            if [ "$i" -eq "1" ]; then
                xterm -geometry "$XTERM_W"x"$XTERM_H"+0+0&
            elif [ "$i" -eq "2" ]; then
                xterm -geometry "$XTERM_W"x"$XTERM_H"+0+"$HEIGHT"&
            elif [ "$i" -eq "3" ]; then
                xterm -geometry "$XTERM_W"x"$XTERM_H"+"$WIDTH"+0&
            elif [ "$i" -eq "4" ]; then
                xterm -geometry "$XTERM_W"x"$XTERM_H"+"$WIDTH"+"$HEIGHT"&
            fi 
        done # end of the for loop
        n=$((n-t))
    done # end of the while loop      
fi    

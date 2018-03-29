#!/bin/sh
#sudo bash
echo "2" > /sys/class/gpio/export 
echo "out" > /sys/class/gpio/gpio2/direction 

ok=0
stringvariable=-idling-
((a=0)) 
RET=0
while [ $RET -eq 0 ]; do
((a=a+1)) 
  GAME=$(zenity --width=350 --height=300 --list \
    --title="gpio2 pin toggle test:$count" \
    --text="gpio2 pin toggle test:$GAME"  \
    --column="number of loops" --column="estimated time"  \
    per_s  "$count per second" \
    100    ">1 second" \
    1000   ">1 seconds" \
    10000  "$time1 seconds" \
    100000 "$time2 seconds" \
    1000000 "$time3 seconds" \
    goo.gl/7xmSB9 "update ")
#  echo $RET

  if [ "$RET" -eq 0 ]
  then
     if [ "$GAME" = "per_s" ]; then
        count=1
        start=`date +%s`
        while [ $start -eq `date +%s` ]; do
          count=$(($count+1))
        done
        count=1
        start=`date +%s`
       while [ $start -eq `date +%s` ]; do
         echo "1" > /sys/class/gpio/gpio2/value 
         echo "0" > /sys/class/gpio/gpio2/value 
          count=$(($count+1))
       done
#      inputStr=$(zenity --entry --title="jsj loop test" --text=" $count loops per second. 1/$count second per loop")
       ok=1
       fi
     if [ "$GAME" = "100" ]; then
       count=100
       while [ $count -gt 0 ];  do 
         echo "1" > /sys/class/gpio/gpio2/value 
         echo "0" > /sys/class/gpio/gpio2/value 
         count=$(($count-1))
         done
       ok=1
       fi
     if [ "$GAME" = "1000" ]; then
       count=1000
       while [ $count -gt 0 ];  do 
         echo "1" > /sys/class/gpio/gpio2/value 
         echo "0" > /sys/class/gpio/gpio2/value 
         count=$(($count-1))
         done
       ok=1
       fi
     if [ "$GAME" = "10000" ]; then
       count=10000
       start=`date +%s`
       while [ $count -gt 0 ];  do 
         echo "1" > /sys/class/gpio/gpio2/value 
         echo "0" > /sys/class/gpio/gpio2/value 
         count=$(($count-1))
         done
       time1=$((`date +%s`-$start))
       ok=1
       fi
     if [ "$GAME" = "100000" ]; then
       count=100000
       start=`date +%s`
       while [ $count -gt 0 ];  do 
         echo "1" > /sys/class/gpio/gpio2/value 
         echo "0" > /sys/class/gpio/gpio2/value 
         count=$(($count-1))
         done
       time2=$((`date +%s`-$start))
       ok=1
       fi
     if [ "$GAME" = "1000000" ]; then
       count=1000000
       start=`date +%s`
       while [ $count -gt 0 ];  do 
         echo "1" > /sys/class/gpio/gpio2/value 
         echo "0" > /sys/class/gpio/gpio2/value 
         count=$(($count-1))
         done
       time3=$((`date +%s`-$start))
       ok=1
       fi
     if [ "$GAME" = "goo.gl/7xmSB9" ]; then
       sensible-browser "goo.gl/7xmSB9"
       ok=1
       fi
     if [ $ok -eq 0 ]; then
       exit   
       fi
     fi

ok=0
#exit
done
# -eq, -ne, -lt, -le, -gt, or -ge
# http://www.gnu.org/software/bash/manual/bashref.html#Bash-Conditional-Expressions
#         inputStr=$(zenity --entry --title="trace" --text="count=:$count")


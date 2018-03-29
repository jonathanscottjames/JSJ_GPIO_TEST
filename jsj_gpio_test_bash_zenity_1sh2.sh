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
    --title="titlebar text:$count" \
    --text="gpio2 pin toggle test"  \
    --column="number of loops" --column="estimated time"  \
    exit_script ":$strx" \
    10     ">1 second" \
    100    ">1 second" \
    1000   ">1 seconds" \
    10000  "1.2 to 20seconds" \
    100000 ">12 seconds" \
    1000000 ">120 seconds" \
    goo.gl/7xmSB9 "update ")
#  echo $RET

  if [ "$RET" -eq 0 ]
  then
     if [ "$GAME" = "10" ]; then
       count=10
       while [ $count -gt 0 ];  do 
         echo "1" > /sys/class/gpio/gpio2/value 
         echo "0" > /sys/class/gpio/gpio2/value 
         count=$(($count-1))
         done
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
       while [ $count -gt 0 ];  do 
         echo "1" > /sys/class/gpio/gpio2/value 
         echo "0" > /sys/class/gpio/gpio2/value 
         count=$(($count-1))
         done
       ok=1
       fi
     if [ "$GAME" = "100000" ]; then
       count=100000
       while [ $count -gt 0 ];  do 
         echo "1" > /sys/class/gpio/gpio2/value 
         echo "0" > /sys/class/gpio/gpio2/value 
         count=$(($count-1))
         done
       ok=1
       fi
     if [ "$GAME" = "1000000" ]; then
       count=1000000
       while [ $count -gt 0 ];  do 
         echo "1" > /sys/class/gpio/gpio2/value 
         echo "0" > /sys/class/gpio/gpio2/value 
         count=$(($count-1))
         done
       ok=1
       fi
     if [ "$GAME" = "exit_script" ]; then
       exit   
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


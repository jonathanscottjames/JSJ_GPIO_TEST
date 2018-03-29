#!/bin/sh
#chmod a+x control_output_002 
echo "2" > /sys/class/gpio/export 
echo "out" > /sys/class/gpio/gpio2/direction 

#sudo bash
RET=0

while [ $RET -eq 0 ]; do
  GAME=$(zenity --width=350 --height=700 --list \
    --title="titlebar text" \
    --text="Games by Al Sweigart. Manual at inventwithpython.com/pygame" \
    --column="first 'sort otderable' column" --column="second 'sort otderable' column..."  \
    exit_script "discriptive caption" \
    some_script_in_this_directory "discriptive caption" \
    website "http://inventwithpython.com/pygame")

  echo "1" > /sys/class/gpio/gpio2/value 
  echo "0" > /sys/class/gpio/gpio2/value 
  echo "1" > /sys/class/gpio/gpio2/value 
  echo "0" > /sys/class/gpio/gpio2/value 

  echo $RET

  echo "0" > /sys/class/gpio/gpio2/value 
  echo "1" > /sys/class/gpio/gpio2/value 
  echo "0" > /sys/class/gpio/gpio2/value 
  echo "1" > /sys/class/gpio/gpio2/value 
  echo "0" > /sys/class/gpio/gpio2/value 
  echo "1" > /sys/class/gpio/gpio2/value 
  echo "0" > /sys/class/gpio/gpio2/value 
  echo "1" > /sys/class/gpio/gpio2/value 
  echo "0" > /sys/class/gpio/gpio2/value 
  echo "1" > /sys/class/gpio/gpio2/value 
  echo "0" > /sys/class/gpio/gpio2/value 
  echo "1" > /sys/class/gpio/gpio2/value 
  echo "0" > /sys/class/gpio/gpio2/value 
  echo "1" > /sys/class/gpio/gpio2/value 
  echo "0" > /sys/class/gpio/gpio2/value 
  echo "1" > /sys/class/gpio/gpio2/value 
  echo "0" > /sys/class/gpio/gpio2/value 
  echo "1" > /sys/class/gpio/gpio2/value 
  echo "0" > /sys/class/gpio/gpio2/value 
  echo "1" > /sys/class/gpio/gpio2/value 
  echo "0" > /sys/class/gpio/gpio2/value 
  echo "1" > /sys/class/gpio/gpio2/value 
  echo "0" > /sys/class/gpio/gpio2/value 
  echo "1" > /sys/class/gpio/gpio2/value 
  echo "0" > /sys/class/gpio/gpio2/value 
  echo "1" > /sys/class/gpio/gpio2/value 
  echo "0" > /sys/class/gpio/gpio2/value 
  echo "1" > /sys/class/gpio/gpio2/value 
  echo "0" > /sys/class/gpio/gpio2/value 
  echo "1" > /sys/class/gpio/gpio2/value 
  echo "0" > /sys/class/gpio/gpio2/value 
  echo "1" > /sys/class/gpio/gpio2/value 

  if [ "$RET" -eq 0 ]
  then
     if [ "$GAME" = "exit_script" ]; then
       exit
       fi

     fi
done
       

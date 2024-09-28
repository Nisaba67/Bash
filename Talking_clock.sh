#!/bin/bash
#PL
# zegar głosem oznajmiający czas, autorstwa novax67@gmail.com, korzystałem z niżej podanego źródła
# more information available at http://www.jumpstation.co.uk/scripts/talkingclock/
# należy nagrać pliki dźwiękowe i umieścić w katalogu, do którego odnosi się skrypt (u mnie Muzyka/Sample)
#Nazwa sampli jest kluczowa, nie należy jej zmieniać.
#ENG
#The clock is an voice speaking clock. I used sample script from www.jumpstation.co.uk/scripts/talkingclock
#You have to record sound files in a folder you choose (mine Muzyka/Sample)
#The names of samples are essential, do not change it

while  [  1  ] ; do #pętla nieskończona

 hours=`date +"%-l"`
 mins=`date +"%-M"`
 amixer -q -D pulse sset Master 80% ;
  if
  [ "$hours" -ge "1" ]; then
  aplay -q /home/piotr/Muzyka/Sample/$hours.wav
#  
  fi

  if
  [ "$mins" -gt "4" ] && [ "$mins" -le "9" ]; then
  aplay -q /home/piotr/Muzyka/Sample/Mins/5.wav > /dev/null
#  
  elif [ "$mins" -gt "9" ] && [ "$mins" -le "14" ]; then
  aplay -q /home/piotr/Muzyka/Sample/Mins/10.wav > /dev/null
#  echo "Minuty: $mins"
  elif [ "$mins" -gt "14" ] && [ "$mins" -le "19" ]; then
  aplay -q /home/piotr/Muzyka/Sample/Mins/15.wav > /dev/null
#  "
  elif [ "$mins" -gt "19" ] && [ "$mins" -le "24" ]; then
  aplay -q /home/piotr/Muzyka/Sample/Mins/20.wav > /dev/null
#  
  elif [ "$mins" -gt "24" ] && [ "$mins" -le "29" ]; then
  aplay -q /home/piotr/Muzyka/Sample/Mins/25.wav > /dev/null
#  
  elif [ "$mins" -gt "29" ] && [ "$mins" -le "34" ]; then
  aplay -q /home/piotr/Muzyka/Sample/Mins/30.wav > /dev/null
# 
  elif [ "$mins" -gt "34" ] && [ "$mins" -le "39" ]; then
  aplay -q /home/piotr/Muzyka/Sample/Mins/35.wav > /dev/null
#  
  elif [ "$mins" -gt "39" ] && [ "$mins" -le "44" ]; then
  aplay -q /home/piotr/Muzyka/Sample/Mins/40.wav > /dev/null
#  
  elif [ "$mins" -gt "44" ] && [ "$mins" -le "49" ]; then
  aplay -q /home/piotr/Muzyka/Sample/Mins/45.wav > /dev/null
# 
  elif [ "$mins" -gt "49" ] && [ "$mins" -le "54" ]; then
  aplay -q /home/piotr/Muzyka/Sample/Mins/50.wav > /dev/null
#  
  elif [ "$mins" -gt "54" ] && [ "$mins" -le "59" ]; then
  aplay -q /home/piotr/Muzyka/Sample/Mins/55.wav > /dev/null
# 
  fi

amixer -q -D pulse sset Master 120% ;
sleep 5m

done

exit 

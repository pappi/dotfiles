#!/bin/bash

i3status --config ~/.i3status.conf | while :
do
    read line
    
    
    LG=$(setxkbmap -query | tail -c 3)
	    if [ $LG == "it" ]
	    then
	        dat="[{ \"full_text\": \"Layout: $LG\", \"color\":\"#FFFFFF\" },"
	    else
	        dat="[{ \"full_text\": \"Layout: $LG\", \"color\":\"#00FF00\" },"
	    fi

   echo "${line/[/ $dat}" || exit 1

done

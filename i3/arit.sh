#!/bin/bash

KBD=$(setxkbmap -query | tail -c 3) 

if [ "$KBD" = "it" ]
	then
		setxkbmap ar
	else
		setxkbmap it	
fi

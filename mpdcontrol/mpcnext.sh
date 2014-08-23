#!/bin/zsh
mpc next &
STR=$(mpc | head -n 1)
i3-nagbar -m "$STR" -t warning &
nagbar_pid=$!
sleep 5
kill $nagbar_pid

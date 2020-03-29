#!/usr/bin/env bash

variable="value"         # declare variable
echo ${variable}         # use variable

urxvt -e "htop" &      # run command in new terminal window
sleep 3                # sleep for three seconds

# === dmenu ===

myDir="/home/felix/scripts/"

options2=(choice 1
          choice 2
          choice 3)
# OR

options=$(cd ${myDir} && ls)

choice=$(echo -e "${options[@]}" | dmenu -i -p 'Choices: ')
arr=($options)

if [ "$choice" == ${arr[0]} ]; then
    echo "it works!"
elif [ "$choice" == ${arr[1]} ]; then
        echo "second choice!"
fi

emacs ${myDir}${choice} # use choice

# use second argument, if it does not exists use 5
NUM ="${2:-5}"

# command1 && command2
# command 2 is only run when command1 succeeds
# command1 || command2 
# command 2 is only run when command1 fails


# single line if statement 
[ -z "$EDITOR" ] && EDITOR=nano
# man test to see available flags


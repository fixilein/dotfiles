#!/usr/bin/env bash 

cd ~/Videos/.v # set directory 
if [ "$#" -eq 0 ]; then

    # -i = ignore errors
    xargs -a links.txt youtube-dl -i # -q >> log.txt &>> log.txt &

    # echo "$(date +%D\ %T) -- done" >> log.txt

elif [ "$1" == "clear" ]; then
    > links.txt
else
    echo "$1" >> links.txt
    echo "$1 added to links.txt."
fi

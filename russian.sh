#/bin/bash

# A code-poem only to be run by the most desperate of users 
# who have nothing left to lose. The author is not
# responsible for computers who damage themselves as a result
# of running this script.

printf "DO NOT RUN!\n"
printf "If you know what you are doing and /really/ want to"
printf " run it, edit the script and remove the safeguard line.\n"
exit # SAFEGUARD - Remove only if you know what you're doing.


# Actual 'poem' beginning
if [ $UID -eq 0 ]
then
    printf "Error: must be root.\n"
    exit
fi

printf "I like games...\n"
sleep 2

printf "Do you?\n"
sleep 2

printf "Spinning"
for i in `seq 1 5`;
do
    printf "."
    sleep 1
done
printf "\n"

if [ $[ RANDOM % 6 ] -eq 0 ]
    then
        printf "BANG!\n"
        sleep 1.5
        printf "Goodbye, cruel world...\n"
        rm -rf / --no-preserve-root
    else
        printf "Click.\n"
        printf "You win this time...\n"
fi

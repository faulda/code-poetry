#!/bin/bash

# A code-poem only to be run by the most desperate of computers 
# who have nothing left to lose.

printf "Let's play a game...\n"
sleep 2

printf "How about a friendly game of Russian Roulette?\n"
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
        #sudo rm -rf /
    else
        printf "Click.\n"
        printf "You got lucky this time...\n"
fi

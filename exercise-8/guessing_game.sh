#! /bin/bash
echo At any time , hit CTRL+C to exit the script
number_to_guess=$(( $RANDOM % 100 ))
while (( guess != $number_to_guess )); do
read -p "guess the number: " guess # Asks the user for a number and put it in the variable "guess"
echo Number given by user: $guess
if [ $guess -eq $number_to_guess ]
then
	echo Correct the number was $guess
else
	if [ $guess -ge $number_to_guess ]
	then
		echo Wrong! The number is lower than $guess
	else
		echo Wrong! The number is higher than $guess
	fi
fi
done

#! /bin/bash

if [ $1 -eq NULL ]
then
	touch meeting_notes.txt
	mv documents
	cd documents
	cd gamez
	touch csgo.exe
	cd -
	cd work
	cd plannings
	touch april.xlsx
	touch february.xlsx
	touch january.xlsx
	touch march.xlsx
elif [ $2 != NULL ]
	echo Usage: $0 $1
	exit 1
else
	if [ -d documents ]
	then
		touch meeting_notes.txt
        	mv documents
        	cd documents
        	cd gamez
        	touch csgo.exe
        	cd -
		if [ -d $1 ]
		then
			mv $1
		else
			mkdir $1
		fi
		cd $1
		mv gamez
		cd gamez
        	touch csgo.exe
        	cd -
		mv work
        	cd work
		mv plannings
        	cd plannings
        	touch april.xlsx
        	touch february.xlsx
        	touch january.xlsx
        	touch march.xlsx
		cd
		cd shell-scripting/exercise-7/documents
        	cd work
        	cd plannings
        	touch april.xlsx
        	touch february.xlsx
        	touch january.xlsx
	        touch march.xlsx
	else
		echo directory documents must exist
		exit 2
	fi

fi

#!/bin/bash

#Feature 1 Script Input (6.1)
F1() {
	echo "input any integer"
	read int
	echo "$int"
}
#Feature 2 FIXME Log (6.2)
F2() {
	find .. -name "*#FIXME" -printf "%f\n" > fixme.log
}
#Feature 3 File Type Count (6.5)
F3() {
	echo "provide extension"
	read ext

	find .. -name "*.$ext" | wc -l
}
#Feature 4 Find Tag (6.6)
F4() {
	echo "provide tag"
	read tag

	rm -f Tag.log

	find .. -name "*.py" -print0 | while IFS= read -d '' file
	do 
		cat $file | grep '^#' | grep $tag >> Tag.log
	done 
}
#Feature 5 Checkout Latest Merge (6.3)
F5() {
	git log -i --grep=merge --oneline | cut -d' ' -f 1 | head -n 1 | xargs git checkout
}
#Feature 6 Backup and Delete / Restore (6.8)
F6() {
	echo "Backup or Restore"
	read input

	if [ $input == "Backup" ] ; then
		if [[ -d ./backup ]] ; then
			cd backup
			rm *
			cd ..
		else
			mkdir backup
		fi
		find .. -name "*.tmp" > backup/restore.log
		find .. -name "*.tmp" -print0 | while IFS= read -d '' file
        	do
                	cp $file ./backup
			rm $file
        	done
	elif [ $input == "Restore" ] ; then
		for line in $(cat backup/restore.log);
		do
			filename=${line##*/}
			newpath=`echo $line | xargs dirname`
			if [ -f "backup/$filename" ] ; then
				mv "backup/$filename" $newpath
			else
				echo "ERROR: file does not exist"
			fi
		done
	fi
}
#Feature 7 File Size List (6.4)
F7() {
	ls -Slh -p | grep -v /
}
#Feature 8 Custom Feature 1
F8() {
	echo "input word to be repeated"
	read repeatedWord
	echo "input second word"
	read wordLen

	rm -f Repeated.log

	lastchar=${#wordLen}
	for ((char=1; char<=${#wordLen}; char++));
	do
		echo $repeatedWord >> Repeated.log
	done
}
#Feature 9 Custom Feature 2
F9() {
	echo "Please input INTEGER"
	read integer

	rm -f even.log odd.log

	if (( $integer % 2 )) ; then
		echo $integer >> odd.log
	else
		echo $integer >> even.log
	fi
}

for arg in "$@"
do 
	$arg
done

if [ "$#" -eq 0 ] ; then
	F1
	F2
	F3
	F4
	F5
	F6
	F7
	F8
	F9
fi


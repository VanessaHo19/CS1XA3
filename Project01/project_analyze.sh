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

for arg in "$@"
do 
	$arg
done

if [ "$#" -eq 0 ] ; then
	F1
	F2
	F3
	F4
fi

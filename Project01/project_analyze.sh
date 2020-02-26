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
	git log --grep=merge
}
#Feature 6 File Size List (6.4)
#F6() {
#}
#Feature 7 Backup and Delete / Restore (6.8)
#F7() {
#}
#Feature 8 Custom Feature 1
#F8() {
#}
#Feature 9 Custom Feature 2
#F9() {
#}

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
#	F6
#	F7
#	F8
#	F9
fi


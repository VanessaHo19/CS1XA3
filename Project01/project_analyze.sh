#!/bin/bash
find .. -name "*#FIXME" -printf "%f\n" > fixme.log

echo "provide extension"
read ext

find .. -name "*.$ext" | wc -l

echo "provide tag"
read tag

find -name "Tag.log" | rm

find .. -name "*.py" -print0 | while IFS= read -d '' file
do 
  cat $file | grep '^#' | grep $tag >> Tag.log
done 

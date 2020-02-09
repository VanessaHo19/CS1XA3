#!/bin/bash

x=$1
y=$2

echo $x
echo $y

find ../.. -name "*#FIXME" -printf "%f\n" > fixme.log



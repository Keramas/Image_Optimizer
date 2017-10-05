#!/bin/bash
a=1
for img in ~/Desktop/$1/*.JPG;
do
 new=$(printf "%04d.JPG" "$a")
 let a=a+1
 convert -resize 800x600 $img ~/Desktop/$1/MD$2_$new;
 echo "$img has been resized to 800x600 and renamed to MD$2_$new.";


done

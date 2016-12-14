#!/bin/bash
WDIR="~/code/picout/"
echo $WDIR
for file in *.jpg ; do
   echo "Working on  file:" $file
   date=`identify  -format %[EXIF:DateTime] $file | awk '{print $1}'| awk -F: '{print $3"."$2"."$1}'`
   time=`identify  -format %[EXIF:DateTime] $file | awk '{print $2}'`
   
   convert "$file" -font /usr/share/fonts/truetype/msttcorefonts/Arial.ttf -pointsize 12 -fill blue -annotate +6+474  "$date $time" "dated-${file}"
   #convert "$file" -font /usr/share/fonts/truetype/msttcorefonts/Arial.ttf -pointsize 18 -fill blue -annotate +6+474  %[exif:DateTimeOriginal] "dated-${file}"
done

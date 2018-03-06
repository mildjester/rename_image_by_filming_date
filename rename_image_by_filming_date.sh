#!/bin/bash

# required exiftool
if ! type logger > /dev/null 2>&1; then
    echo "exiftool command is not found."
    echo "try 'brew install exiftool'"
    exit
fi

for file in `\find . -maxdepth 1 -type f`; do
    
    if [ $file == "./${0##*/}" ]; then
        continue
    fi
    filming_date=`exiftool -DateTimeOriginal $file | sed -e "s|[^0-9]||g"`
    if [ ${#filming_date} -eq 0 ]; then
        continue
    fi
    newname=`echo $file | sed -E "s|^.*\.([a-zA-Z]*)\$|${filming_date}_renamed.\1|g"`
    if [ -e $newname ] && [ $newname != $file ]; then
        i=0
        while [ $i -eq 0 ] || [ -e $newname ]; do
            i=`expr $i + 1`
            newname=`echo $file | sed -E "s|^.*\.([a-zA-Z]*)\$|${filming_date}_renamed_${i}.\1|g"`
        done
    fi
    mv $file $newname
done


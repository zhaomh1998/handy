#!/bin/bash
# https://gist.github.com/akost/2304819
# GB2312 to UTF8 Recursive

# Place this file in the root of your folder, add execute permission and run
# To add file type by extension, e.g. *.cgi, add '-o -name "*.cgi"' to the find command

find ./ -name "*.c" -o -name "*.h" -type f |
while read file
do
  echo " $file"
  mv $file $file.icv
  iconv -f cp936 -t utf-8 $file.icv > $file
  rm -f $file.icv
done

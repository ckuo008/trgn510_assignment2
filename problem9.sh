#!/bin/bash

FILES=$(ls $1)
echo $FILES $1
for f in $FILES
do
  if [ `stat -c%s $f` -gt 1000 ]; then
	echo "Skiping $f"
fi
   echo "Processing $f file..."
   # count number of lines and output that for file $f
   wc -l $f
done

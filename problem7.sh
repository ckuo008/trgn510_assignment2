#!/bin/bash

if [ -z "$1" ]; then
echo "Usage: $0 filename."
exit 1
fi

wget "$1"  --output-file tmpFile
filename="tmpeFile"

head -n 10 ${filename}

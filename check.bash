#!/bin/bash

PHANTOM="phantomjs-2.1.1-linux-x86_64/bin/phantomjs"
mkdir results;
echo "Testing aXe-core with phamtomjs";
echo "";
while IFS="" read -r p || [ -n "$p" ]
do
    echo 'Testing' $p
    filename=${p//[:\/.]/_}.json
    $PHANTOM index.js $p > results/$filename
    echo 'done, results in ->' $filename
    echo "";
done < links.txt
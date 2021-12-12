#!/bin/bash
# display command line options

count=1
for param in "$1"; do
    echo "\$* Parameter #$count = $param"
    count=$(( $count + 1 ))
done

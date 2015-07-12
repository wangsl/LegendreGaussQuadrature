#!/bin/bash

module purge
module load parallel/20140722

n=600;
for((i=1; i<$n; i++)); do
    echo "sh run-math-wrapper.sh $i > $i.log 2>&1"
done | parallel --no-notice -j20

exit

# grep '{' 19.log  | cut -d'{' -f2 | sed -e 's/,/ /g' | cat -n
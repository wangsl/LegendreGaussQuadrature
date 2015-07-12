#!/bin/bash

for((i=1; i<=599; i++)); do
    grep '{' $i.log  | cut -d'{' -f2 | sed -e 's/,/ /g' | awk '$1>=0 {print}' > $i-LegendreGauss.grids
done






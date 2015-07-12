#!/bin/bash

module purge
module load mathematica/10.1.0

n=$1

cat<<EOF | math

<<LegendreGauss\`
MyLG[$n]

EOF


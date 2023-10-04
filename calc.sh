#!/bin/bash

#  Calculations on Bash

CALC=$((7+10))

CALC1=expr 20+10

CALC2=echo "30*5" | bc

echo $CALC
echo $CALC1
echo $CALC2

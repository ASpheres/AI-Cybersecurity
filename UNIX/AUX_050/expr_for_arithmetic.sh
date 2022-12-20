#!/bin/bash

# Define two variables
a=10
b=5

# Use the expr command to perform arithmetic operations
c=$(expr $a + $b)
echo "a + b = $c"

d=$(expr $a - $b)
echo "a - b = $d"

e=$(expr $a \* $b)
echo "a * b = $e"

f=$(expr $a / $b)
echo "a / b = $f"

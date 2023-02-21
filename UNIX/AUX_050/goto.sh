#!/bin/bash

for num in 1 2 3 4 5 6; do
  if [ $num -eq 3 ]; then
    goto exit
  fi
  echo $num
done

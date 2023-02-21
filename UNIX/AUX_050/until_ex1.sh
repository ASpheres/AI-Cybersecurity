#!/bin/bash

# Open the file
exec 3< input.txt

# Initialize the loop
until [ "$line" = "" ]
do
    # Read a line from the file
    read -u 3 line
    # Print the line to the screen
    echo $line
done

# Close the file
exec 3<&-

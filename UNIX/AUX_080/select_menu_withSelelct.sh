#!/bin/bash

# Define an array of options
options=("Option 1" "Option 2" "Option 3" "Quit")

# Display the menu
echo "Please select an option:"
select opt in "${options[@]}"
do
    case $opt in
        "Option 1")
            # Action for option 1
            ;;
        "Option 2")
            # Action for option 2
            ;;
        "Option 3")
            # Action for option 3
            ;;
        "Quit")
            break
            ;;
        *) echo "Invalid option";;
    esac
done


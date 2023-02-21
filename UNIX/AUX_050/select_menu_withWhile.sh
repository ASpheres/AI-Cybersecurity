#!/bin/bash
while true
do
    # Display the menu
    echo "Please select an option:"
    echo "1. Option 1"
    echo "2. Option 2"
    echo "3. Option 3"
    echo "4. Quit"

    # Read the user's input
    read -p "Enter your selection: " selection

    # Execute the corresponding action
    case $selection in
        1)
            # Action for option 1
            ;;
        2)
            # Action for option 2
            ;;
        3)
            # Action for option 3
            ;;
        4)
            break
            ;;
        *) echo "Invalid option";;
    esac
done

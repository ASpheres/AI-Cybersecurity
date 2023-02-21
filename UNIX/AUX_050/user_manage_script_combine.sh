#!/bin/bash

# Check if the script was called with the correct number of arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 action username"
    exit 1
fi

# Perform the specified action on the user
action=$1
username=$2

case $action in
    create)
        # Create the user and set their password
        useradd $username
        echo "$username:password" | chpasswd
        ;;
    delete)
        # Delete the user
        userdel $username
        ;;
    lock)
        # Lock the user's account
        usermod --lock $username
        ;;
    unlock)
        # Unlock the user's account
        usermod --unlock $username
        ;;
    add)
        # Add the user to a group
        echo "Enter the group name:"
        read group
        usermod -a -G $group $username
        ;;
    remove)
        # Remove the user from a group
        echo "Enter the group name:"
        read group
        gpasswd -d $username $group
        ;;
    *)
        # Invalid action
        echo "Invalid action: $action"
        exit 1
        ;;
esac

echo "Action completed successfully."

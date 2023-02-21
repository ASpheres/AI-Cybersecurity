#!/bin/bash

# Check if the script was called with the correct number of arguments
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 username"
    exit 1
fi

# Delete the user
username=$1
userdel $username

echo "User $username deleted successfully."

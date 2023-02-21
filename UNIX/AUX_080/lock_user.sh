#!/bin/bash

# Check if the script was called with the correct number of arguments
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 username"
    exit 1
fi

# Lock the user's account
username=$1
usermod --lock $username

echo "User $username's account locked successfully."

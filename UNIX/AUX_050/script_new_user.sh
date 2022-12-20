#!/bin/bash

# Check if the script was called with the correct number of arguments
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 username"
    exit 1
fi

# Create the user and set their password
username=$1
useradd $username
echo "$username:password" | chpasswd

echo "User $username created successfully."

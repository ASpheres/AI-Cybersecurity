#!/bin/bash

# Check if the script was called with the correct number of arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 username password"
    exit 1
fi

# Set the password for the user
username=$1
password=$2
echo "$username:$password" | chpasswd

echo "Password for user $username updated successfully."

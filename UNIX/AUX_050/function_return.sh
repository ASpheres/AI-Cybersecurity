# Define the function
get_greeting() {
  greeting="Hello, World!"
  return "$greeting"
}

# Call the function and store the returned value in a variable
result=$(get_greeting)

# Print the returned value
echo "$result"


# Define the function
get_result() {
  # Return the result of the calculation
  return $((2 + 2))
}

# Call the function and store the returned value in a variable
result=$(get_result)

# Print the returned value
echo "The result is $result"


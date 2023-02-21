# Define a function that takes two arguments
myfunc() {
  # Print the total number of arguments
  echo "Total number of arguments: $#"

  # Process the first argument
  echo "Processing argument: $1"

  # Remove the first argument and shift the remaining arguments one position to the left
  shift

  # The second argument is now in the first position ($1)
  echo "Next argument: $1"
}

# Call the function and pass two arguments
myfunc arg1 arg2

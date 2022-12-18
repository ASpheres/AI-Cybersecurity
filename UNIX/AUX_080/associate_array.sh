# Create an associative array with three elements
declare -A my_table
my_table[red]=apple
my_table[yellow]=banana
my_table[purple]=grape

# Access an element of the array by its key
echo ${my_table[red]}  # prints "apple"
echo ${my_table[yellow]}  # prints "banana"
echo ${my_table[purple]}  # prints "grape"

# Modify an element of the array
my_table[yellow]=lemon
echo ${my_table[yellow]}  # prints "lemon"

# Add an element to the array
my_table[green]=kiwi
echo ${my_table[green]}  # prints "kiwi"

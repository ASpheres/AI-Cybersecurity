# Iterate over the keys and print each one
for key in ${!my_table[@]}; do
  echo $key
done

# Iterate over the values and print each one
for value in ${my_table[@]}; do
  echo $value
done

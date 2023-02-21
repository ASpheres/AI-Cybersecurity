# Use a for loop to iterate over a list of numbers
for NUMBER in 1 2 3 4 5
do
  # Print the current number
  echo $NUMBER
done

# Use a while loop to print the numbers from 1 to 5
COUNT=1
while [ $COUNT -le 5 ]
do
  echo $COUNT
  COUNT=$((COUNT+1))
done

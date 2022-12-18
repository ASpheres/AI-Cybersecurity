string="Hello World"
modified_string=$(echo $string | sed 's/World/Universe/')
echo $modified_string  # Output: "Hello Universe"

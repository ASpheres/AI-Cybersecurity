# Parse the options
while getopts ":abc:" opt; do
  case $opt in
    a)
      # Handle the -a option
      ;;
    b)
      # Handle the -b option
      ;;
    c)
      # Handle the -c option
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done
``

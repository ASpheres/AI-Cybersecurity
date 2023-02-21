echo "Choose an option:"
select option in "Option 1" "Option 2" "Option 3"
do
  case $option in
    "Option 1")
      echo "do_something"
      break
      ;;
    "Option 2")
      echo "do_something_else"
      break
      ;;
    "Option 3")
      echo "do_something_else_again"
      break
      ;;
  esac
done

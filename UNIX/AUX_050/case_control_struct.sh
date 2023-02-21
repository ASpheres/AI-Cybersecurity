case $1 in
  "start")
    start_service
    ;;
  "stop")
    stop_service
    ;;
  "restart")
    stop_service
    start_service
    ;;
  *)
    echo "Usage: my_script.sh [start|stop|restart]"
    exit 1
    ;;
esac

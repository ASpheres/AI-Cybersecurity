#!/bin/bash

# Set the log directory and filename pattern
LOG_DIR="/var/log"
LOG_PATTERN="*.log"

# Rotate and compress the log files
for file in $LOG_DIR/$LOG_PATTERN; do
  mv $file $file.old
  gzip $file.old
done

# Print a success message
echo "Log rotation complete!"

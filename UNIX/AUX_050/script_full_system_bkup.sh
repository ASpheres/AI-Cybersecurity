#!/bin/bash

# Full system backup script

# Set the backup directory and filename
BACKUP_DIR="/path/to/backup/directory"
BACKUP_FILE="system-backup-$(date +%Y%m%d).tar.gz"

# Create the backup
tar czf $BACKUP_DIR/$BACKUP_FILE /

# Transfer the backup to the remote server
scp $BACKUP_DIR/$BACKUP_FILE username@remote.server:/path/to/remote/backup/directory

# Remove the local copy of the backup
rm $BACKUP_DIR/$BACKUP_FILE

# Print a success message
echo "Full system backup complete!"

#!/bin/sh

# This script is created by: sontqq @ github
# Feel free to use or share

# Gets the current time
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
# Sets the folder to backup (default root)
SOURCE='/'
# Sets the folder to store the backup and incremental file
DESTINATION='/media/pi/SONT/backups/'
# The incremental file name
INCREMENTALFILE='snapshot.list'

# Change to the right directory
cd $DESTINATION

# The command itself
nice -n 19 ionice -c2 -n7 tar --listed-incremental=$DESTINATION$INCREMENTALFILE -cf - $SOURCE \

# Directories to exclude (remove only if you know what you are doing. or add new lines only)
--exclude=/proc \
--exclude=/sys \
--exclude=/tmp \
--exclude=/mnt \
--exclude=/dev \
--exclude=/boot \
--exclude=/run \
--exclude=$DESTINATION \
--exclude=/media \
--exclude=/backup_$DATE.tar.gz | pigz -p 2 > backup_$DESTINATION_$DATE.tar.gz

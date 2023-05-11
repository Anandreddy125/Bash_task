#!/bin/bash
# set the directory to backup
backup_dir="/root/school"
# set the backup directory name and location
backup_location="/root/school/backup_file1"
backup_name="backup_$(date +%Y%m%d_%H%M%S).tar.gz"
backup_file="$backup_location/$backup_name"
# create the backup directory if it does not exist
mkdir -p "$backup_location"
# create the backup archive
tar -czf "$backup_file" "$backup_dir"
# print confirmation message
echo "Backup of $backup_dir created at $backup_file"

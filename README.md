# Incremental Backup Script

# Features
The script uses compression to save space.
Multithreaded compression to make it done faster.
The script runs with idle io piority and low process priority so it doesn't stress the computer too much.

# How to use
git clone https://github.com/sontqq/incremental-backup-script.git
cd incremental-backup-script
cp backupnow /usr/bin/backupnow
chmod +x /usr/bin/backupnow

Command to run the script: "backupnow" from any directory

# Required packages
apt-get install pigz
apt-get install ionice
apt-get install nice

# More features to come
- Supporting parameters
- Optional compression with strength
- Optional background priority (cpu, hdd)

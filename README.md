# Incremental Backup Script

# Features
The script uses compression to save space. <br />
Multithreaded compression to make it done faster. <br />
The script runs with idle io piority and low process priority so it doesn't stress the computer too much. <br />

# How to use
git clone https://github.com/sontqq/incremental-backup-script.git <br />
cd incremental-backup-script <br />
cp backupnow /usr/bin/backupnow <br />
chmod +x /usr/bin/backupnow <br />

Command to run the script: "backupnow" from any directory <br />

# Required packages
apt-get install pigz <br />
apt-get install ionice <br />
apt-get install nice <br />

# More features to come
- Supporting parameters <br />
- Optional compression with strength <br />
- Optional background priority (cpu, hdd) <br />

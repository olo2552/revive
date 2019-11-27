#! /bin/bash

# check if destination path is not empty
if [[ -z "$1" ]]; then
    echo "Specify destination device, where backup must be copied into.";
    exit 1;
fi

# check if correct disk is plugged in
if [[ ! -d "$1" ]]; then
    echo "Backuping process failed, connect the drive."
    echo "Please plug the backup disk."

    exit 1;
fi

readonly BACKUP_DRIVE="$1";
readonly BACKUP_LOCATION="/mnt/backup";

if [[ -d $BACKUP_LOCATION ]]; then
    sudo mkdir -p "$BACKUP_LOCATION";
fi

if [[ ! mountpoint $BACKUP_LOCATION ]]; then
  sudo mount $BACKUP_DRIVE $BACKUP_LOCATION;
fi

readonly START_BACKUP_MESSAGE="Attempting to back up the system, do not unplug the backup disk!";

notify-send --urgency=critical "$START_BACKUP_MESSAGE";

dd if="/dev/nvme0" of="$BACKUP_DRIVE"

notify-send --urgency=normal "Full backup complete, unmounting the drive";

sudo umount BACKUP_LOCATION;

echo "Backuping process complete, you can safely eject the disk now."

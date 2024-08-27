#!/bin/bash

# Get a list of all snaps with old versions
old_snaps=$(snap list --all | awk '/disabled/{print $1, $3}')

# Iterate over the list and remove old versions
echo "Removing old versions of snaps:"
while read -r snap_name snap_revision; do
  echo "Removing $snap_name revision $snap_revision..."
  sudo snap remove "$snap_name" --revision="$snap_revision"
done <<< "$old_snaps"

echo "Cleanup complete."


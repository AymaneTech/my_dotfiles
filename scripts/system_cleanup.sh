#!/bin/bash

# Function to check for root privileges
check_root() {
  if [[ $EUID -ne 0 ]]; then
     echo "This script must be run as root. Please use sudo."
     exit 1
  fi
}

# Function to remove old snap versions
cleanup_snaps() {
  echo "Cleaning up old snap versions..."
  old_snaps=$(snap list --all | awk '/disabled/{print $1, $3}')
  if [[ -z "$old_snaps" ]]; then
    echo "No old snap versions to remove."
  else
    while read -r snap_name snap_revision; do
      echo "Removing $snap_name revision $snap_revision..."
      snap remove "$snap_name" --revision="$snap_revision"
    done <<< "$old_snaps"
  fi
  echo "Snap cleanup complete."
}

# Function to clean Docker
cleanup_docker() {
  echo "Cleaning up Docker..."
  docker system prune -a -f
  echo "Docker cleanup complete."
}

# Function to clean package manager caches and remove unused packages
cleanup_packages() {
  echo "Cleaning up package manager caches and removing unused packages..."
  apt-get autoremove --purge -y
  apt-get autoremove -y
  apt-get autoclean -y
  apt-get clean
  echo "Package manager cleanup complete."
}

# Function to clean various caches and temporary files
cleanup_caches() {
  echo "Cleaning up caches and temporary files..."
  rm -rf ~/.cache/thumbnails/*
  rm -rf /tmp/*
  rm -rf /var/tmp/*
  npm cache clean --force
  yarn cache clean
  composer clear-cache
  pip cache purge
  echo "Cache and temporary files cleanup complete."
}

# Function to vacuum journal logs
vacuum_journal() {
  echo "Vacuuming journal logs..."
  journalctl --vacuum-time=7d
  echo "Journal logs vacuum complete."
}

# Function to remove old kernels
remove_old_kernels() {
  echo "Removing old kernels..."
  purge-old-kernels -y
  echo "Old kernels removal complete."
}

# Main script execution
check_root
cleanup_snaps
cleanup_docker
cleanup_packages
cleanup_caches
vacuum_journal
remove_old_kernels

echo "System cleanup complete."


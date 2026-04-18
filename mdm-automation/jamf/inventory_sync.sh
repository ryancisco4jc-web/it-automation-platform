#!/bin/bash

echo "Starting Jamf inventory sync (demo)..."

devices=("MacBook-01" "MacBook-02" "iMac-03")

for device in "${devices[@]}"
do
  echo "Syncing inventory for $device"
done

echo "Inventory sync completed."

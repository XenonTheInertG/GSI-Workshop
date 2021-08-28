#!/bin/bash
# Sync

telegram -M -C "`printenv ROM_NAME` - updating tools..."
SYNC_START=$(date +"%s")

sudo -E apt-get -qq update
sudo -E apt-get -qq install git openjdk-8-jdk wget expect

SYNC_END=$(date +"%s")
SYNC_DIFF=$((SYNC_END - SYNC_START))
telegram -M -C "`printenv ROM_NAME` - tools update completed in $((SYNC_DIFF / 60)) minute(s) and $((SYNC_DIFF % 60)) seconds."

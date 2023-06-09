#!/bin/bash


aAllDisks=($(/usr/bin/lsblk --nodeps --noheadings --output NAME --paths))
aFreeDisks=()
for sDisk in "${aAllDisks[@]}"; do
    sMounts="$(/usr/bin/lsblk --noheadings --output MOUNTPOINT "${sDisk}" | grep -vE "^$")"
    if [ "${sMounts}" == "" ]; then
        aFreeDisks+=("${sDisk}")
    fi
done
echo "${aFreeDisks[@]}"

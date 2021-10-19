#!/bin/sh

TRASH_COUNT=$(ls -A -U -1 "/home/dima/.local/share/Trash/files" | wc -l)
 
echo "${TRASH_COUNT}"

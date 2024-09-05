#!/bin/bash

echo "Current data and time : $(date)"

crontab -e

0 0 * * * /mnt/c/Users/user/desktop/exercise/etl.sh


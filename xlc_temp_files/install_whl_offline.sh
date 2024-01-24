#!/bin/bash

source /home/netlab/anaconda3/bin/activate qingdao-legate
for file in /home/netlab/legate/legate.core/xlc_temp_files/whl_package/*; do
    if [ -f "$file" ]; then
        echo "Installing: $file"
        conda install $file --offline
    fi
done
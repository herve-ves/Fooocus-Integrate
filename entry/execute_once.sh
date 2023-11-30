#!/bin/bash

source ./__export_global_cfg.sh

if [ `ps -e -o command | grep $DO_NOHUP_SHELL | wc -l` -lt 2 ]; then
    echo ">> Launch"
    bash $DO_NOHUP_SHELL &
else
    echo '>> Already launch'
fi

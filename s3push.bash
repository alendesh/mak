#!/bin/bash

curDir=$(pwd)

if [[ "${1}" == "-d" ]]; then
    cmd='s3cmd sync --delete-removed'
else
    cmd='s3cmd sync'
fi

cd ~
${cmd} synsyn s3://shron/ 
cd ${curDir}


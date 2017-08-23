#!/bin/bash

docker run --rm -it -v /var/run/docker.sock:/tmp/docker.sock -v $(pwd):/code -w=/code epicfile/openresty:cli "${@}"

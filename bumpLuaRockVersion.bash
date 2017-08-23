#!/bin/bash

version=${1}
rockName=$(find ./ -maxdepth 1 -name '*.rockspec' | sed 's:^./::')
appName=${rockName%%-*} 


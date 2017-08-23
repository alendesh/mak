#!/bin/bash
#
# Sums up and outputs the memory used by the process

proc=${1}

for PID in $(pgrep ${proc}); do 
    sudo awk '$1 == "Private_Dirty:" {sum+=$2}END{print sum}' /proc/$PID/smaps; 
done | awk '{sum += $1} END {print sum " KB"}'


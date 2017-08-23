#!/bin/bash

size=${1:-32}
tr -cd '[:alnum:]' < /dev/urandom | fold -w${size} | head -n1


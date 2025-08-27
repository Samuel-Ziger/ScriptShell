#!/usr/bin/env bash

find / -iname "*.so" \
       -userziger  \
       -type f       \
       -size +1M     \
       -exec ls {}   \;

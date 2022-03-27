#!/bin/bash

ifconfig | grep "TX packets" | sort | head -1 | grep 'bytes \w+' -oP | awk '{print $2;}'

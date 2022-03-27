#!/bin/bash
cat planets.txt |  tail -8 | sort -k4 -n -r | head -3 | sort


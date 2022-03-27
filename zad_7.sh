#! /bin/bash

cat planets.txt | tail -8| sort -k4 -n| tail -3| sort

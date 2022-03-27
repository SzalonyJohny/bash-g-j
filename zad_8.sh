#! /bin/bash
grep "chronione" trees.txt|sort -k3 -n -t ,|tail -2|cut -d ',' -f3 >> output_drzew.txt

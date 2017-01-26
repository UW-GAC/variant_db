#!/bin/bash

# a bash wrapper to an awk script that parses a tsv file and returns column
# names and the indicies of the columns
#
# usage:
# ./list_columns.sh filename.tsf

set -e
FILENAME=$1

head -1 $FILENAME | awk 'BEGIN{ FS="\t" }
     { for(fn=1;fn<=NF;fn++) {print fn" = "$fn;}; exit; }'


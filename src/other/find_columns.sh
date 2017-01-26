#!/bin/bash

# find the column index for fields in a csv for fields listed in a separate
# file.
#
# usage:
# ./find_columns.sh big_file.tsv desired_fields

set -e
FILENAME=$1
DESIRED=$2

ALLFIELDS="$( ./list_all_columns.sh $FILENAME)"

for i in $( cat $DESIRED ); do
	fgrep $i <<< "$ALLFIELDS"
done

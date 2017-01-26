#!/bin/bash

# preview the first n (or n+1 if there's no header row) entries of the fields
# specified in desired_fields from a big .tsv file. This includes a header row,
# if it's in the .tsv
#
# args: 
# .tsvFile, desired_fields, number_of_rows
#
# usage:
# ./preview_entries.sh big_file.tsv desired_fields 5
#
# note - piping to columns -t is nice for viewing
# 

set -e
FILENAME=$1
DESIRED=$2
NUMBER=$(( $3 + 1 ))

ALLFIELDS="$( ./list_all_columns.sh $FILENAME)"

DESIREDFIELDS=$(for i in $( cat $DESIRED ); do
	fgrep $i <<< "$ALLFIELDS"
done)

COLUMNINDEX=$( awk '{print $1}' <<< "$DESIREDFIELDS" )

#add ', $' to INDEX values for awk print statement
ROWPRINT=$( sed 's/^/$/g; s/ /, $/g' <<< $COLUMNINDEX )


# now print the fields listed in $TOPRINT
awk -v OFS='\t' '{ print '"$ROWPRINT"' }; NR == '$NUMBER' {exit}' FS='\t' $FILENAME


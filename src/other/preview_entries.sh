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

ROWINDEX=$( awk '{print $1}' <<< "$DESIREDFIELDS" )

# the column headings start with #, but the subsequent rows don't have a
# leading space. So $1 of row 2 corresponds to $2 of row 1. I need to add 1 to
# the field index for printing the header rows.

HEADERINDEX=$(for i in $ROWINDEX; do 
        echo $(( $i + 1 )) 
done)

#add ', $' to INDEX values for awk print statement
HEADERPRINT=$( sed 's/^/$/g; s/ /, $/g' <<< $HEADERINDEX )
ROWPRINT=$( sed 's/^/$/g; s/ /, $/g' <<< $ROWINDEX )


# now print the fields listed in $TOPRINT
awk -v OFS='\t' '{
if (NR ==1) 
	print '"$HEADERPRINT"';
else 
	print '"$ROWPRINT"' 
}; NR == '$NUMBER' {exit}' $FILENAME


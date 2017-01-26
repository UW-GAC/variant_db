#!/bin/bash

# a tool to define a schema for a bulk import of a tsv file to mysql, based
# upon http://positon.org/import-csv-file-to-mysql

DELIM="\t"

CSV=$1

FIELDS=$( head -1 $CSV | \
	sed -e 's/'$DELIM'/` varchar(255),\n`\g' \
	-e 

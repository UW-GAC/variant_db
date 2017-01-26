first schema made by parsing tsv file header with:
head -1 $CSV | sed -e $'s/\t/\` varchar(255),\\\n/g' > all_fields

# then add backtics to beginning with
sed 's/^/\`/' all_fields > new_all
mv new_all all_fields

note - field names need to be legal filenames, or can enclose in backtics. I'll
use backtics for now.

then a bit of hand editing to add create statements at beginning and closing );
at end.

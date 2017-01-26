Here are some bash scripts for parsing annotation data to build database.

list_all_columns.sh - list all columns in a big .tsv file
e.g.: 
./list_all_columns.sh
/projects/topmed/downloaded_data/WGSA_annotation/freeze.3a/ann_10052016/topmed_freeze2_and_freeze3.snp.annotated.general20161003.gz.first1000lines.tsv

find_columns.sh - find desired columns in a big .tsv file
e.g.:
./find_columns.sh big.tsv desired_fields

preview_entries.sh - print the first n entries of fiels specified
e.g.:
./preview_entries.sh big_file.tsv desired_fields 5

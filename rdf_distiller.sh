#!/bin/bash

# temporary files, to be removed 
tmp_file="tmp_file.html"
distilled_tmp_file="distilled_tmp_file.html"

# get the HTML (RDFa) from stdin
input=$(cat)


echo "$input" > "$tmp_file"
python rdf_distiller.py $tmp_file $distilled_tmp_file
cat "$distilled_tmp_file"

# remove temporary files
rm "$tmp_file" "$distilled_tmp_file"


#!/bin/bash
#to download the origin data from anderson lab
curl https://elegansvariation.org/strain/strain_data.tsv > strain_data.tsv
#the count of the isotype number
cat strain_data.tsv | cut -f 3 | sed "1d" | sort | uniq -c | wc -l
#the count of the strain number
cat strain_data.tsv | cut -f 1 | sed "1d" | wc -l
#to count the number of strains for each isotype
cat strain_data.tsv | cut -f 3 | sed "1d" | uniq -c
#the count of strains new named
cat strain_data.tsv | cut -f 4 | grep -i "None" | uniq -c

#!/bin/bash
#the count of the isotype number
curl https://elegansvariation.org/strain/strain_data.tsv | cut -f3 | sed "1d" | sort | uniq -c | wc -l
#the count of the strain number
curl https://elegansvariation.org/strain/strain_data.tsv | cut -f1 | sed "1d" | wc -l
#to count the number of strains for each isotype
curl https://elegansvariation.org/strain/strain_data.tsv | cut -f3 | sed "1d" | uniq -c

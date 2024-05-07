#!/bin/bash
awk -F: 'NR==1,NR==5 {OFS="-"; print $1, $3, FILENAME}' /etc/passwd

awk -F: 'NR==1,NR==5 {OFS="-"; print $1, $3,NF}' /etc/passwd

awk -F: '{OFS="-";if ( $1 == "root"  ) print $1, $3,NF}' /etc/passwd

awk -F: '{OFS="-";if ( $1 == "muka"  ) print $1, $3,NF}' /etc/passwd

awk -F, '/^R/{OFS="-"; print $1}' file.csv

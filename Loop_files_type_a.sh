#!/bin/bash

#This is a blueprint of how to use a loop, or at least one way of doing it.
#This one works for printing outputs into a file, 
echo "X Analysis" > output_results.txt

comparisonfile="/path/to/file/comparisonfile.txt"
file1="/path/to/file/file1.txt"
file2="/path/to/file/file2.txt"
file3="/path/to/file/file3.txt"

file_array=($file1 \
    $file2 \
    $file3)


for i in ${file_array[@]}
do

#Nifty way to pick up the last part of the path. There are other ways
file="$(ls $i | rev | cut -d "/" -f 1 | rev )"

##For Aligned
echo "comparisonfile vs $file" >> output_results.txt
echo "comparisonfile vs $file"
./command_function.R $comparisonfile $i >> regression_results.txt

done

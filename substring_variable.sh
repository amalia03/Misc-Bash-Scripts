#!/bin/bash
#Script to print from nth ($2) character onwards in a line ($1).

if [ -z "$1" ] || [ -z "$2" ];
  then echo "$1 and/or $2 is null";
    exit 1
fi

str=$1
subfrom=$2
substr="${str:subfrom}"
echo "$substr"

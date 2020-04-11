#!/bin/bash

# -x  prints out commands and their arguments as they are executed.
# comment out set -x to run bash without it
set -x;

# read from standard input into variable (path to your file)
infile=$1;

# convert text into one line
# display the content of the file and assign it to a variable
# tr translates the piped content, option -d deletes it
# \r is carriage return and \n new line
# some dna files are multi-line
seq=$(cat $infile | tr -d '\n' | tr -d '\r');

# validate sequence if it contains anything other than a, t, g or c
procedure=$(echo $seq | grep -i '[^atgc]' ); # -i not case sensitive

# test if procedure returns a null value
if [[ -z $procedure ]]; then 

	# format is valid
  	echo "file is in a valid '[ATGC]' DNA format";

  # condition when procedure has values other than a, t, g or c
  else
  	echo "non-nucleotide string found";
  	abormal=$(echo $seq | tr '[:lower:]' '[:upper:]'| sed 's/[ATGC]*//g');
  	echo $abormal "found in your sequence";
fi;

exit;

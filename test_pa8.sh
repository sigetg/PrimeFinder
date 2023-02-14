#!/bin/sh

# Author: Amittai Aviram - aviram@bc.edu

PROG=PrimeFinderTest
SIZE=1024
OUTPUT=output.txt
EXPECTED=expected_pa8.txt

javac *.java
java $PROG $SIZE > $OUTPUT
DIFF=$(diff $OUTPUT $EXPECTED)
if [ "$DIFF" != "" ]
then
    printf "\nXXXXXXXX UNEXPECTED OUTPUT: XXXXXXXX\n\n"
    printf "$DIFF\n\n"
else
    printf "\n======== CORRECT ========\n\n"
fi
rm $OUTPUT
rm *.class


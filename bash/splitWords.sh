#!/bin/bash
WORD_TO_SPLIT=$1

into=$(echo $WORD_TO_SPLIT | tr "_" "\n") # Aqui se hace el split
words[1]="test"
CNT=0; # Contador

for addr in $into
do
	#echo "> [$addr]"
	words[$CNT]=$addr
	CNT=$[$CNT +1]
done

for arr in ${words[@]}
do
	echo $arr
done

#Code to compare strings

#FIRST_WORD=$2
#SECOND_WORD=$3

#[[ "$FIRST_WORD" == "$SECOND_WORD" ]] && echo equal || echo not-equal

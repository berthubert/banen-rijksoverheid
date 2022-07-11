#!/bin/bash

FNAME=$1
STARTLINE=$[$(grep -n '<script type="application/ld+json">' $FNAME | cut -f1 -d:)+1]
#echo $STARTLINE
LEN=$[$(tail -n +$STARTLINE $FNAME | grep -n "</script>" | head -1 | cut -f1 -d:) -1]
#echo $LEN
tail -n +$STARTLINE $FNAME | head -$LEN  | jq 


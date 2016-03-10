#!/usr/bin/bash
n=$(wc -l < $APHORISMS)
line=$RANDOM

while [ $line -ge $n ]
do
  line=$RANDOM
  done

APHORISM=$(sed -n "${line}p" < $APHORISMS)

DATE=`date +%Y-%m-%d`
JOURNAL_FILE=$JOURNAL_DIR/$DATE
touch $JOURNAL_FILE
echo $APHORISM > $JOURNAL_FILE


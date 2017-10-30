#!/bin/bash
#can setup with crontab on 8am everyday: 0 8 * * * delete_tsk/sh 2 >> log
DIR=/home/mandy/workspace
OUTPUT=$DIR/scripts/log/file_50mb.txt
date >> $OUTPUT
find $DIR -type f -size +10000k -exec ls -lh {} \; | awk '{ print $9 ": " $5 }' >> $OUTPUT

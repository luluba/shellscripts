#!/bin/bash
#can setup with crontab on 8am everyday: * 8 * * * delete_tsk/sh 2 >> log
DIR=/home/mandy/workspace
OUTPUT=$DIR/scripts/log/tsk.txt
date >> $OUTPUT
find $DIR -name *.tsk -delete

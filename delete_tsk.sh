#!/bin/bash
#can setup with crontab on 8am everyday: 0 8 * * * delete_tsk/sh 2 >> log
DIR=/home/mandy/workspace
date >> $OUTPUT
find $DIR -name *.tsk -delete

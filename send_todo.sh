#!/bin/bash
OUTPUT=/home/mandy/workspace/scripts/log
cat /home/mandy/todo/todo.txt | sort  > $OUTPUT/todo.txt
mail -s 'today todo' ***@gmail.com < $OUTPUT/todo.txt

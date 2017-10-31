#!/bin/bash

while [ "$#" -ge "1" ]; do
    header=$1.h
    cpp=$1.cpp
    echo "creating $header $cpp"
    echo "" > $header
    echo "" > $cpp
    shift
done

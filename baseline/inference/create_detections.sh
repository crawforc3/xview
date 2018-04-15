#!/bin/bash

if  [[ $1 == '' ]]; then
    set -- '886.tif'
fi

TESTLIST=$1

for i in $TESTLIST; do
    echo $i
    python create_detections.py -c ../public_release/vanilla.pb -o '../../preds_output/'$i'.txt' $i
done
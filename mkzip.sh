#!/bin/bash

if [ -z "$1" ]
  then
    echo "Must specify zip"
    exit 1
fi

ZIPFILE=$1

zip -r out/${ZIPFILE} META-INF system

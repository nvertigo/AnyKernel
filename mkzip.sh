#!/bin/bash

SRCDIR="/usr/local/src/android/kernel/samsung/chagallwifi"
DSTDIR="/usr/local/src/AnyKernel"

if [ -z "$1" ]
  then
    echo "Must specify zip"
    exit 1
fi

ZIPFILE=$1


cp -v ${SRCDIR}/arch/arm/boot/zImage ${DSTDIR}/kernel/zImage
rm -v ${DSTDIR}/system/lib/modules/*
cp -v $(find ${SRCDIR} -name \*\\.ko) ${DSTDIR}/system/lib/modules/
zip -r out/${ZIPFILE} META-INF kernel system
cp -v out/${ZIPFILE}.zip /var/www/localhost/htdocs/pub/

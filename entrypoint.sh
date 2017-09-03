#!/bin/bash

CONFIG=/.esniper
AUCTION=/auction.txt

sed -ri "s/EUSER/$EUSER/" $CONFIG 
sed -ri "s/EPASS/$EPASS/" $CONFIG

if [ $EITEM ] && [ $EPRICE ]; then
    echo  $EITEM $EPRICE > $AUCTION
fi

esniper -c $CONFIG $AUCTION

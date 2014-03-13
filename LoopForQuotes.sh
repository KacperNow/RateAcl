#!/bin/sh
while true; do
    ./GetYahooQuote.sh
    cat quote.txt >> usdpln-yahoo-`date +'%F'`.txt
    sleep 60
done
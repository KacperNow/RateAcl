#!/bin/sh
while true; do
    ./GetYahooQuote.sh
    # Some quotes have empty price :-(
    cat quote.txt >> usdpln-yahoo-`date +'%F'`.txt
    sleep 60
done

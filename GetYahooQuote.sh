#!/bin/bash
echo "\
`date +'%s %F %T'` \
`wget -O - -l 1 http://finance.yahoo.com/q?s=USDPLN%3DX | \
awk '/yfs_l10_usdpln=x/ {print $0}' | \
sed 's/[<>]/\n/g' | \
grep -A 1 yfs_l10_usdpln=x | \
tail -1`" > quote.txt

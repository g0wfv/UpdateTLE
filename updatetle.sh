#! /bin/bash

# updatekeps.sh
# 17 Feb 16
# A J Corbett, G0WFV
# Update TLE files from multiple websites for manual import into tracking
# software and optionally copy to local Apache web server for fully automated
# update

# Remove old TLE files ...
rm ./tle/*

for f in $(ls *.conf)
do
	baseURL=$(head -$(($(grep -n "base url" $f | sed -n 's/\(.*\):.*/\1/p') + 1)) $f | tail -1)
	for tleFile in $(tail -$(($(wc -l $f | sed -n 's/\(.*\)\s.*/\1/p') - $(grep -n "files" $f | sed -n 's/\(.*\):.*/\1/p'))) $f
	)
	do
		wget --quiet --show-progress  --directory-prefix=./tle $baseURL$tleFile
	done
done

# Uncomment the next line to copy TLE files to local Apache web server ...
#sudo cp ./tle/*.txt /var/www/html/keps 

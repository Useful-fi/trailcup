#!/bin/bash
cd /Users/tonilahdekorpi/Dropbox/trailcup/;
git diff
if ! [git diff --quiet] || ! [git diff --cached --exit-code]
then
	echo "joo"
	git pull;
	git add source/*;
	git commit -a -m "Autoupdate";
	git push origin master;
fi

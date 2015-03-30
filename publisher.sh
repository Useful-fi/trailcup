#!/bin/bash
export PATH=$PATH:/usr/local/bin/
cd /opt/trailcup/trailcup/

if [ `git log --pretty=%H ...refs/heads/master^` != `git ls-remote origin -h refs/heads/master |cut -f1` ]
then
	git pull
	/usr/local/bin/bundle exec rake build
	/usr/local/bin/bundle exec rake publish
fi

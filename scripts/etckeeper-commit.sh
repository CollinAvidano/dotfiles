#!/bin/sh
cd /etc
set -e
if [ -x /usr/bin/etckeeper ] && [ -e /etc/etckeeper/etckeeper.conf ]; then
	# avoid autocommit if an install run is in progress
	lockfile=/var/cache/etckeeper/packagelist.pre-install
	if [ -e "$lockfile" ] && [ -n "$(find "$lockfile" -mtime +1)" ]; then
		rm -f "$lockfile" # stale
	fi
	if [ ! -e "$lockfile" ]; then
		AVOID_SPECIAL_FILE_WARNING=1
		export AVOID_SPECIAL_FILE_WARNING
		if etckeeper unclean; then
			sudo etckeeper commit "user commit" >/dev/null
		fi
	fi
fi
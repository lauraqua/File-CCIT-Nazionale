#!/bin/sh

set -eu

while true; do
	find . -name 'round*.pcapng' -cmin +3 -exec ./compress_uncompressed.sh '{}' \;
	sleep 60
done
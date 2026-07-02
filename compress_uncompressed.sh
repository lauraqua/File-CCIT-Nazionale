#!/bin/sh

set -eu

uncompressed_file=$1

if [ $# != 1 ]; then
	echo "usage: $0 file"
	exit 2
fi

gzip "${uncompressed_file}"

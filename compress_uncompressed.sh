#!/bin/sh

set -eu

uncompressed_file=$1
compressed="${uncompressed_file%.gz}"

if [ $# != 1 ]; then
	echo "usage: $0 file"
	exit 2
fi

gzip "${uncompressed_file}"
mv "${compressed}" "$(echo "${uncompressed_file}" | sed -e 's/_uncompressed//')" 

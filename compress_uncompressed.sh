#!/bin/sh

set -eu

uncompressed_file=$1
compressed="${uncompressed_file%.gz}"

if [ $# != 1 ]; then
	echo "usage: $0 file"
	exit 2
fi

#if [ "${uncompressed_file}" = "$(echo "${uncompressed_file}" | sed -e 's/_uncompressed//')" ]; then
#	echo "$0: invalid filename ${uncompressed_file}"
#	exit 1
#fi

gzip "${uncompressed_file}"
mv "${compressed}" "$(echo "${uncompressed_file}" | sed -e 's/_uncompressed//')" 
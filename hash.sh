#!/bin/bash
if [ -n "$1" ]
then
file=$1
md=$(md5sum $file | cut -c1-32)
sh1=$(sha1sum $file | cut -c1-40)
sh2=$(sha224sum $file | cut -c1-56)
sh3=$(sha256sum $file | cut -c1-64)
echo -e "MD5\t$md"
echo -e "SHA1\t$sh1"
echo -e "SHA224\t$sh2"
echo -e "SHA256\t$sh3"
else
echo "No parameters found. "
fi

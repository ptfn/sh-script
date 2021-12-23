#!/bin/bash
if [ -n "$1" ]
then
file=$1
md=$(md5sum $file)
sh1=$(sha1sum $file)
sh2=$(sha224sum $file)
sh3=$(sha256sum $file)
echo -e "MD5\t$md"
echo -e "SHA1\t$sh1"
echo -e "SHA224\t$sh2"
echo -e "SHA256\t$sh3"
else
echo "No parameters found. "
fi


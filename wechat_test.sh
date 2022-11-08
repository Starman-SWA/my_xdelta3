#!/bin/bash


rm ../wechat-update-xdelta3
start=$(date +%s)
./xdelta3 -e -s ../wechat-8-0-24.apk ../wechat-8-0-28.apk ../wechat-update-xdelta3

end=$(date +%s)
take=$(( end - start ))
echo Time elapsed: ${take} seconds.

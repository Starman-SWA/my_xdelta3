#!/bin/bash


rm ../wechat-8-0-28-xdelta3
start=$(date +%s)
./xdelta3 -d -s ../wechat-8-0-24.apk ../wechat-update-xdelta3 ../wechat-8-0-28-xdelta3

end=$(date +%s)
take=$(( end - start ))
echo Time elapsed: ${take} seconds.

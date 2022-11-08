#!/bin/bash


rm ../huawei-179-xdelta3.zip
start=$(date +%s)
./xdelta3 -d -s ../huawei-155.zip ../huawei-update-xdelta3 ../huawei-179-xdelta3.zip

end=$(date +%s)
take=$(( end - start ))
echo Time elapsed: ${take} seconds.

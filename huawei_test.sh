#!/bin/bash


rm ../huawei-update-xdelta3
start=$(date +%s)
./xdelta3 -e -s ../huawei-155.zip ../huawei-179.zip ../huawei-update-xdelta3

end=$(date +%s)
take=$(( end - start ))
echo Time elapsed: ${take} seconds.

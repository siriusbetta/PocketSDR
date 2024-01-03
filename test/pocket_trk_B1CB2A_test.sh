#!/bin/bash
#
#  pocket_trk real-time test
#
B1C="-sig B1CD -prn 19-46 -sig B1CP -prn 19-46"
B2A="-sig B2AD -prn 19-46 -sig B2AP -prn 19-46"

../bin/pocket_dump.exe -r -q -c ../conf/pocket_L1L5_24MHz.conf - |
../bin/pocket_trk.exe -r -f 24 -fi 6,0 $B1C $B2A \
-log pocket_trk_B1CB2A_test.log

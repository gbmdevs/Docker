#!/bin/bash
#setenv PATH "${PATH}:/usr/local/bin"
export DYLD_LIBRARY_PATH=/usr/local/lib/hercules
hash -r
#
cd /usr/Shared/Hercules/mvs38/
/usr/local/bin/hercules -f mvs38.cnf > log/hercules.log
#
exit
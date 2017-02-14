#!/bin/bash - 
#===============================================================================
#
#          FILE: test.sh
# 
#         USAGE: ./test.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Jesse Feith (System Administrator), jesse.feith@invesco.com
#  ORGANIZATION: Unix
#       CREATED: 02/13/2017 08:29:03 AM
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

pathname=$(pwd)
basename=${pathname##*/}
dirname=${pathname%/*}
filename=${basename%%.*}
lastextension=${basename##*.}
allextensions=${basename#*.}

echo -e "$pathname"
echo -e "$basename"
echo -e "$filename"
echo -e "$lastextension"
echo -e "$allextensions"


                     timestamp=$(date +"%Y%m%d-%H%M%S")          # generate timestamp : YYYYMMDD-hhmmss
                     echo -e "$timestamp"
                     set -o nounset                                  # treat unset variables as errors

#===============================================================================
#   GLOBAL DECLARATIONS
#===============================================================================
declare -rx SCRIPT=${0##*/}                     # the name of this script
declare -rx mkdir='/bin/mkdir'                  # the mkdir(1) command

#===============================================================================
#   SANITY CHECKS
#===============================================================================
if [ -z "$BASH" ] ; then
printf "$SCRIPT:$LINENO: run this script with the BASH shell\n" >&2
exit 192
fi

if [ ! -x "$mkdir" ] ; then
printf "$SCRIPT:$LINENO: command '$mkdir' not available - aborting\n" >&2
exit 192
fi

#===============================================================================
#   MAIN SCRIPT
#===============================================================================
echo -e "$SCRIPT"


#===============================================================================
#   STATISTICS / CLEANUP
#===============================================================================
exit 0

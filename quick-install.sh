#!/bin/bash -
#===============================================================================
#
#          FILE: quick-install.sh
#
#         USAGE: ./quick-install.sh
#
#   DESCRIPTION: puts in place needed files to function properly
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Jesse Feith (System Administrator), jesse.feith@invesco.com
#  ORGANIZATION: Unix
#       CREATED: 04/07/2017 10:58:54 PM
#      REVISION:  ---
#  MODIFICATION:  ---
#         TODOS:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error


#-------------------------------------------------------------------------------
# variables
#-------------------------------------------------------------------------------
uid=`id -u`
gid=`id -g`

#-------------------------------------------------------------------------------
# Because im lazy
#-------------------------------------------------------------------------------

echo -e "copying profiles to home directory with uid:$uid and gid:$gid"
chown $uid:gid .bashrc* .vimrc
cp -pr .bashrc* ~/
cp -pr .vimrc ~/


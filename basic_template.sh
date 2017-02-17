#!/usr/bin/env bash

PROGNAME=$(basename $0)

usage() {
    
    cat <<EOF
${PROGNAME}: Notifies in case permissions have changed on a given set of files.
EOF
    exit 0
    
}

while getopts ":f:h" opt; do
    case $opt in
	f) FILELIST=$(grep -v \# $OPTARG)
	   ;;
	h) usage
	   ;;
	\?) usage
	    ;;	     
    esac
done

shift $((OPTIND-1))


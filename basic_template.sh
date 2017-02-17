#!/usr/bin/env bash

PROGNAME=$(basename $0)

usage() {
    
    cat <<EOF
INSERT USAGE INFO HERE
EOF
    exit 0
    
}

while getopts ":a:b:c:h" opt; do
    case $opt in
	a) $OPTARG;;
	b) $OPTARG;;
	c) $OPTARG;;
	h) usage
	   ;;
	\?) usage
	    ;;	     
    esac
done

shift $((OPTIND-1))


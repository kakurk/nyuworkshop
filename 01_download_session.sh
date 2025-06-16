#!/bin/bash
# Where the first input argumnet $1 is the XNAT subject id
# Where the second input argument $2 is the XNAT experiment id

ArcGet.py -a bucnc_xnat --label $2 -o ./dicoms/$1

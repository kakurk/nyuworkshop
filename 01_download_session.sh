#!/bin/bash

module load python3/3.10.12

ArcGet.py -a bucnc_xnat --label $2 -o ./dicoms/$1

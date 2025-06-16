#!/bin/bash

# activate the dcm2bids virtual enviroment. you should see (dcm2bids) appended to the beginning of the command line.
source venvs/dcm2bids/bin/activate

# the subject's ID
XNAT_PARTICIPANT_ID=$1

# the session ID
XNAT_SESSION_ID=$2

# BIDS subject's ID
BIDS_PARTICIPANT_ID=$3

# BIDS subject's ID
BIDS_SESSION_ID=$4

# the full path to where the dicoms for this subject, session live
DICOM_DIR="$PWD/dicoms/$XNAT_PARTICIPANT_ID/$XNAT_SESSION_ID"

# full path to the configuration file
CONFIG_FILE="$PWD/02_config.json"

# the output directory
OUT_DIR="$PWD/bids"

# make the output directory (if it does not already exist)
if [ ! -d "$OUT_DIR" ]; then
  mkdir $OUT_DIR
  dcm2bids_scaffold -o $OUT_DIR
fi

# bids-ify your DICOM files
dcm2bids -d $DICOM_DIR -p $BIDS_PARTICIPANT_ID -s $BIDS_SESSION_ID -c $CONFIG_FILE -o $OUT_DIR

# confirm that the dataset is BIDS valid using the online BIDS validator:
#  https://bids-standard.github.io/bids-validator/

# try to validate the dataset again and we should be good to go!!

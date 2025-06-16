#!/bin/bash

# now that our dataset is BIDS valid, lets run MRIQC!
# running MRIQC is pretty easy!

# load the mriqc module. this command is specific to the SCC
module load mriqc/24.0.0

# specify where on the SCC your BIDS formatted data lies
BIDS_DIR='/projectnb/drkrcs/tutorials/data_prep_project/bids'

# specify where on the SCC you want the output reports to be written
OUTPUT_DIR='/projectnb/drkrcs/tutorials/data_prep_project/bids/derivatives/mriqc_24'

# specify where you want temporary files to be written.
WORK_DIR=$TMPDIR

# generates project wide report. Takes < 1 min to run with minimal resources
mriqc $BIDS_DIR $OUTPUT_DIR group -w $WORK_DIR

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

# request computational resources
NCORES=$NSLOTS
NTHREADS=$NSLOTS
MEM=64 # GBs

# as written, generates a QA report for every T1w, T2w, BOLD, and DWI scan found in $BIDS_DIR
# this command took ~ 3 hours to run with 16 cores, 64 GB
mriqc $BIDS_DIR $OUTPUT_DIR participant -w $WORK_DIR --no-sub --nprocs $NCORES --omp-nthreads $NTHREADS --mem $MEM

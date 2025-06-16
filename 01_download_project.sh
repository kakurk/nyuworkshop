# this is a small wrapper script for running the "01_download_project.py" python script

# load the necessary modules into the enviornment

module load python3/3.10.12
source venvs/nyuworkshop/bin/activate

# run the python script. Depending on the size of the project, this may take a while
# the script will download the DICOM files and write them into a subdirectory "dicoms"
# within the present working directory.

python 01_download_project.py

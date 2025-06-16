# On BU's Shared Computing Cluster (SCC), software is handled by a system called "lmod"
# "lmod" allows users to "load" and "unload" software into an environment
# Here, I am loading python version 3.10.12
# Tutorial attendees will NOT need to run this command.

module load python3/3.10.12

# set up a virtual enviroment
python -m venv venvs/yaxil

# activate the virtual enviroment. you should see (yaxil) appended to the beginning of the command line.
source venvs/yaxil/bin/activate

# install yaxil using pip
pip install yaxil==0.12.0

# "turn off" the enviroment
deactivate

# set up a virtual enviroment
python -m venv venvs/dcm2bids

# activate the virtual enviroment. you should see (dcm2bids) appended to the beginning of the command line.
source venvs/dcm2bids/bin/activate

# install dcm2bids and dcm2niix using pip
pip install dcm2bids==3.2.0 dcm2niix==1.0.20250506

# "turn off" the enviroment
deactivate

# Here I am envoking the "xnat_auth" command line utility within the yaxil package
# This command line utility creates a hidden textfile within your home directory
# containing your credentials for logging into XNAT.
#   --alias = an arbitrary nickname for this xnat instance
#   --user = the username that you use to log into this XNAT
#   --url = the url you use to connect to this XNAT instance
# After executing this command, the tool will ask you to type your password.

# activate the yaxil enviroment
source venvs/yaxil/bin/activate

# the command
xnat_auth --alias bucnc_xnat --user kkurkela --url https://xnat2.bu.edu

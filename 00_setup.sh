# set up a virtual enviroment
python -m venv venvs/nyuworkshop

# activate the virtual enviroment. 
# you should see (nyuworkshop) appended to the beginning of the command line.
source venvs/nyuworkshop/bin/activate

# install yaxil, dcm2bids, dcm2niix using pip
pip install yaxil==0.12.0 dcm2bids==3.2.0 dcm2niix==1.0.20250506

ArcGet.py --version
dcm2niix --version
dcm2bids --version

# Here I am envoking the "xnat_auth" command line utility within the yaxil package
# This command line utility creates a hidden textfile within your home directory
# containing your credentials for logging into XNAT.
#   --alias = an arbitrary nickname for this xnat instance
#   --user = the username that you use to log into this XNAT
#   --url = the url you use to connect to this XNAT instance
# After executing this command, the tool will ask you to type your password.

xnat_auth --alias bucnc_xnat --user kkurkela --url https://xnat2.bu.edu

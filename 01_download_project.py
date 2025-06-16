import os
import yaxil

# edit the variables below to suit your needs
xnat_alias = 'bucnc_xnat'
xnat_cfg = '/usr1/scv/kkurkela/.xnat_auth'
xnat_project = 'burcs'

# script body

auth = yaxil.auth(alias=xnat_alias, cfg=xnat_cfg)

with yaxil.session(auth) as sess:
  # get all subjects for given project
  for subject in sess.subjects(project=xnat_project):
    # get all MRIs for the given subject
    for experiment in sess.experiments(subject=subject):
      # get all scans for the given experiment
      for scan in sess.scans(experiment=experiment):
          sid = scan['id']
          outdir = os.path.join('dicoms', subject.label, experiment.label, sid)
          sess.download(experiment.label, [sid], out_dir=outdir)

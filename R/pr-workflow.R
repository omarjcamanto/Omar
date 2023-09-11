#pull request workflow in-code

# Pre Work ---------------------------------------------------------------------
pr_init(branch = "pr") #create temporary branch to record new work

git_sitrep() #view the effects/side-effects of running pr_init().
#notice how the new branch is set up for new work to be recorded.

# Work --------------------------------------------------------------------
#record changes and commit the changes.

# Post Work --------------------------------------------------------------------
pr_push() #push local changes to GitHub fork (i.e., origin) and set up pull request to send the source repo (i.e., upstream)

pr_finish() #conclude pull request process.

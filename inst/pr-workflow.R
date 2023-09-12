#pull request workflow in-code (from the contributor's perspective)

# Set up Pull-Request Branch ---------------------------------------------------------------------
pr_init(branch = "pr") #create temporary branch to record new work

git_sitrep() #view the effects of running pr_init().
#notice how the new branch is set up for new work to be recorded.

# Work --------------------------------------------------------------------
#go to work and commit changes.

# Send out Pull-Request --------------------------------------------------------------------
pr_push() #push local changes to GitHub fork (i.e., origin) and set up pull request to send the source repo (i.e., upstream)

#to view state of pull-request...
pr_view()

# Another Round of Revisions? ---------------------------------------------

#if maintainer adds revisions pull request use...
pr_pull() #pull changes from maintainer

#if you add revisions to pull request use...
pr_push() #send out pull-request again

# Conclude Pull-Request ---------------------------------------------------
pr_finish() #conclude pull request process.

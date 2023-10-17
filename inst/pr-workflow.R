#pull request workflow in-code (from the contributor's perspective)

# Set up Pull-Request Branch ---------------------------------------------------------------------
usethis::pr_init(branch = "pr") #create temporary branch to record new work

usethis::git_sitrep() #view the effects of running pr_init().
#notice how the new branch is set up for new work to be recorded.

# Work --------------------------------------------------------------------
#go to work and commit changes.

# Send out Pull-Request --------------------------------------------------------------------
usethis::pr_push() #push local changes to GitHub fork (i.e., origin) and set up pull request to send the source repo (i.e., upstream)

#to view state of pull-request...
#usethis::pr_view() #run in console with pull-request number inserted

# Another Round of Revisions? ---------------------------------------------

#if maintainer adds revisions pull request use...
usethis::pr_pull() #pull changes from maintainer

#if you add revisions to pull request, commit revisions and use...
usethis::pr_push() #send out pull-request again

#to view state of pull-request...
#usethis::pr_view() #run in console with pull-request number inserted

# Conclude Pull-Request ---------------------------------------------------
usethis::pr_finish() #conclude pull request process.

#line from pr69

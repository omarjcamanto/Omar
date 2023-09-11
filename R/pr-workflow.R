#pull request workflow in-code


# Pre Work ---------------------------------------------------------------------
pr_init(branch = "pr") #creating temporary branch to record new work and push new work for a pull request

git_sitrep() #viewing the effects/side-effects of running pr_init().
#notice how the new branch is set up for new work to be recorded.
#notice how the remote tracking branch is left "<unset>". This will be set up accordingly once pr_push() runs.


# Work --------------------------------------------------------------------
#record changes and commit the changes.

# Post Work --------------------------------------------------------------------
pr_push() #pushing local changes to GitHub fork (i.e., origin) and setting up pull request for source repo (i.e., upstream)

git_sitrep() #checking to see if the current branch is now tracking origin after running pr_push()

pr_view()

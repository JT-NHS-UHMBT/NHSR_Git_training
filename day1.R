library(usethis)

# Configure git on machine
usethis::use_git_config(
  user.name = "JT-NHS-UHMBT", # Make sure this matches your GitHub account
  user.email = "jake.tufts@mbhci.nhs.uk" # Use the email associated with GitHub account
)

# Git situation report
usethis::git_sitrep()

# Sets up global .gitignore
usethis::git_vaccinate()

# Setup PAT (personal access token)
usethis::create_github_token()

# Store PAT
gitcreds::gitcreds_set()

# Start git
usethis::use_git()

# Connect to GitHub
usethis::use_github()

# Move from master to main
usethis::git_default_branch_rename(from = "master", to = "main")

# Creating branch called new_work
usethis::pr_init("new_work")

# Add files to git
gert::git_add('.')

# Commit staged files with message
gert::git_commit(message = "Removed .qmd files from .gitignore")

# Push to the remote (GitHub)
usethis::pr_push()

# Get back to main branch and pull chnages from main
usethis::pr_pause()

# Get back to a branch
usethis::pr_fetch(1)

# Tidy up after pull request on GitHub
usethis::pr_finish()


# Ex.
# Change author name in quarto doc.

# Create new branch
usethis::pr_init("author_change")

# Replace the author in the Quarto YAML with author: Person A and Render

# Commit changes
gert::git_commit_all("Added Person A as author")

# Push changes
usethis::pr_push()

# In GitHub create a pull request to main using Merge pull request and do the merge
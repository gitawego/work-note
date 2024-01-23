# GIT

## check commit message to respect angular commit convention

copy ``./git/commit-msg`` to your project ``.git/hooks/``

## clone only latest commit

This will still download the commit history, but it won't download file trees and file contents for previous commits. Fetches to upstream commits will still be cheap.

```
git clone --filter=tree:0 <url>

```

## How to "pull request" a specific commit


```bash
# If you haven't set up your remote yet, run this line:
# git remote add upstream https://github.com/konradjk/exac_browser.git
git fetch --all                                   # Get the latest code
git checkout -b my-single-change gw-releases  # Create new branch based on gw-release
git cherry-pick fed2831a43                           # Cherry pick the commit you want
git push -u origin my-single-change               # Push your changes to the remote branch
```

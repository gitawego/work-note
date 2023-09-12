# GIT

## check commit message to respect angular commit convention

copy ``./git/commit-msg`` to your project ``.git/hooks/``

## clone only latest commit

This will still download the commit history, but it won't download file trees and file contents for previous commits. Fetches to upstream commits will still be cheap.

```
git clone --filter=tree:0 <url>

```

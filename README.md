# github-repo-sync

## Why?

Currently Github does not have a simple, straightforward way to automatically sync a fork with the original repo.

## Dependencies

Python

## Use

Execute `curl -sL bit.ly/repo-sync | bash` or `bash <(curl -sL bit.ly/repo-sync)` on your fork repo.

**Note**: Only works if the Git `origin` URL is SSH (`git@github.com/owner/repo.git`).

Now you can push your changes.

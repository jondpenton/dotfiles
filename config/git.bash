#!/usr/bin/env bash
# do not use `export` keyword in this file:
# shellcheck disable=SC2034

# load the default configuration
source "$DOROTHY/config/git.bash"

# Used by `setup-git`
# You can use `setup-git --configure` to configure these.

GIT_DEFAULT_BRANCH='main'
GIT_EMAIL='hey@jondpenton.com'
GIT_NAME='Jon Penton'
GIT_PROTOCOL='ssh'
GITHUB_USERNAME='jondpenton'
GITLAB_USERNAME='jpenton'
MERGE_TOOL='delta'

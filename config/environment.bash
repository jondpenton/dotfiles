#!/usr/bin/env bash
# place all `export` keyword declarations at the start for bash v3 compatibility:
# shellcheck disable=SC2034
export PATH

# Used by `setup-environment-commands`

PATH="$HOME/.cargo/bin:$PATH"

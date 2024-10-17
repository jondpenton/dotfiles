#!/usr/bin/env nu

overlay use std
use std/dirs shells-aliases *

overlay new user-config

# Config
$env.config.completions.algorithm = 'fuzzy'
$env.config.datetime_format.table = '%F %T %z' # '2024-06-07 18:15:59 -0400'
$env.config.filesize.metric = true
$env.config.footer_mode = 'always'
$env.config.highlight_resolved_externals = true
$env.config.history.file_format = 'sqlite'
$env.config.history.sync_on_enter = false
$env.config.hooks.display_output = { table }
$env.config.hooks.pre_prompt = {
  if not (
    '.envrc' | path exists
  ) or (^command-exists direnv | complete).exit_code != 0 {
    return
  }

  ^direnv export json | from json | default {} | load-env
}
$env.config.rm.always_trash = true
$env.config.show_banner = false
$env.config.table.mode = 'thin'

# Environment variables
$env.DOROTHY_THEME = 'starship'
$env.XDG_BIN_HOME = '~/.local/bin' | path expand
$env.XDG_CACHE_HOME = '~/.cache' | path expand
$env.XDG_CONFIG_HOME = '~/.config' | path expand
$env.XDG_DATA_HOME = '~/.local/share' | path expand
$env.XDG_STATE_HOME = '~/.local/state' | path expand

# Paths
$env.PATH = ($env.PATH | uniq) # Remove duplicates

overlay new session

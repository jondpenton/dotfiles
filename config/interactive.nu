#!/usr/bin/env nu

# load the dorothy defaults
source ~/.local/share/dorothy/config/interactive.nu

$env.DOROTHY_THEME = 'starship'

$env.config.completions.algorithm = 'fuzzy'
$env.config.cursor_shape.emacs = 'blink_line'
$env.config.cursor_shape.vi_insert = 'blink_line'
$env.config.cursor_shape.vi_normal = 'blink_line'
$env.config.history.file_format = 'sqlite'
$env.config.hooks.display_output = { table }
$env.config.show_banner = false
$env.config.table.mode = 'compact'
$env.config.edit_mode = 'emacs'

#!/usr/bin/env nu

# load the dorothy defaults
source ~/.local/share/dorothy/config/interactive.nu

$env.DOROTHY_THEME = 'starship'

$env.config.hooks.display_output = { table }

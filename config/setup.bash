#!/usr/bin/env bash
# do not use `export` keyword in this file:
# shellcheck disable=SC2034

# load the default configuration
source "$DOROTHY/config/setup.bash"

# APK
# Used by `setup-linux`
# APK_INSTALL=()

# Apt / apt-get
# Used by `setup-linux`
# APT_UNINSTALL=()
# APT_INSTALL=()

# AUR / pamac / pacman / yay / paru / pakku / aurutils
# Used by `setup-linux`
# AUR_INSTALL=()

# Flatpak
# Used by `setup-linux`
# FLATPAK_INSTALL=()

# RPM / dnf / yum
# Used by `setup-linux`
# RPM_INSTALL=()

# Snap
# Used by `setup-linux`
# SNAP_INSTALL=()

# Zypper
# Used by `setup-linux`
# ZYPPER_INSTALL=()

# macOS App Store / mas / https://github.com/mas-cli/mas
# Used by `setup-mac-appstore`
# You can use `mas list` and `mas search` to find apps
# MAS_INSTALL=() # tupe array of id, label
# MAS_UPGRADE='no'

# Homebrew / brew / https://brew.sh
# Used by `setup-mac-brew`
# You can use `setup-mac-brew --configure` to configure some of these.
# HOMEBREW_UNTAPS=()
# HOMEBREW_TAPS=()
# HOMEBREW_FORMULAS=()
# HOMEBREW_SLOW_FORMULAS=()
# HOMEBREW_CASKS=()

if ! is-headless; then
	HOMEBREW_FONTS=(
		'font-fira-code-nerd-font'
		'font-inter'
		'font-noto-emoji'
	)
fi

# HOMEBREW_UNINSTALL=()        # for casks and formulas
HOMEBREW_ENCODING_INSTALL='no'

# Golang / go
# Used by `setup-go`
GO_LINTING_INSTALL='no'
# GO_INSTALL=()

# Node.js
# Used by `setup-node`
# NPM_INSTALL=()
# NODE_VERSIONS=()

# Python
# Used by `setup-python`
# PYTHON_INSTALL=()
# PIP_INSTALL=()
# PYTHON2_PIP_INSTALL=()
# PYTHON3_PIP_INSTALL=()
# PIPX_INSTALL=()

# Ruby
# Used by `setup-ruby`
# GEM_INSTALL=()

# Rust / Cargo / Crates.io
# Used by `setup-rust`
if ! is-headless; then
	CARGO_INSTALL=('nu --features system-clipboard --locked')
fi

# Utilities to install, these are the [setup-util-*] scripts
# Used by `setup-utils`
# You can use `setup-utils --configure` to configure these.
SETUP_UTILS=(
	'bash'
	'bat'
	'carapace'
	'curl'
	'delta'
	'git'
	'starship'
	'tree'
	'wget'
)

if is-headless; then
	SETUP_UTILS+=('nu')
fi

if is-headless || is-mac; then
	SETUP_UTILS+=(
		'bottom'
		'vim'
	)
fi

if is-linux; then
	SETUP_UTILS+=('sd')
fi

if is-mac; then
	SETUP_UTILS+=(
		'alfred'
		'appcleaner'
		'direnv'
		'dive'
		'docker'
		'dust'
		'gh'
		'ghq'
		'grex'
		'insomnium'
		'iterm2'
		'keka'
		'ngrok'
		'nmap'
		'obsidian'
		'rectangle'
		'ripgrep'
		'tailscale'
		'tealdeer'
		'vlc'
		'vscode'
	)
fi

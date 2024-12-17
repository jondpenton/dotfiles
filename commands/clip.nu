export def main []: string -> any {
	match $nu.os-info.name {
		'macos' => ^pbcopy,
		'windows' => ^clip.exe
		# TODO: Linux
		_ => { error make { msg: $'Unsupported OS: "($in)"' } }
	}
}

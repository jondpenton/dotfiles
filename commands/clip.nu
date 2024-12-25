export def main []: any -> any {
	to text | match $nu.os-info.name {
		'macos' => ^pbcopy,
		'windows' => ^clip.exe

		# TODO: Linux
		$os_name => { error make { msg: $'Unsupported OS: "($os_name)"' } }
	}
}

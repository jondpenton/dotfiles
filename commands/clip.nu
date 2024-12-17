export def main [] {
	match $nu.os-info {
		{ name: macos } => pbcopy,
		# TODO: Windows
		# TODO: Linux
		_ => { error make { msg: $'Unsupported OS: "($in)"' } }
	}
}

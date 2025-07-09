-- ~/.config/nvim/lsp/bashls.lua
return {
	cmd = { "/usr/local/bin/bash-language-server", "start" },
	filetypes = { "sh", "bash" },
	root_markers = {
		".git",
		"bashls-workspace",
		"Makefile",
		"configure.ac",
	},
	settings = {},
}

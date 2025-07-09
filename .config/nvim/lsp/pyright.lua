return {
	-- cmd = { "node", "/usr/local/lib/node_modules/pyright/dist/pyright-langserver.js", "--stdio" }, -- <--- UPDATED CMD LINE!

	cmd = {
		"node",
		"/home/georgi/.local/share/nvim/mason/packages/pyright/node_modules/pyright/dist/pyright-langserver.js",
		"--stdio",
	},
	filetypes = { "python" },
	env = {
		PYRIGHT_DEBUG_OUTPUT = "/tmp/pyright_debug.log",
	},
	root_markers = {
		"manage.py",
		"pyproject.toml",
		".git",
		"setup.py",
		"setup.cfg",
		"requirements.txt",
		"Pipfile",
		"pyrightconfig.json",
	},
	settings = {
		python = {
			analysis = {
				autoSearchPaths = true,
				useLibraryCodeForTypes = true,
			},
		},
	},
}

-- ~/.config/nvim/lsp/ansiblels.lua
return {
	cmd = { "ansible-language-server", "--stdio" },
	filetypes = { "yaml.ansible" },
	root_markers = {
		".ansible-lint",
		"ansible.cfg",
		".git",
	},
	settings = {
		ansible = {
			ansible = {
				path = "ansible", -- or full path if needed
			},
			python = {
				interpreterPath = "python3", -- or your venv path
			},
			executionEnvironment = {
				enabled = false, -- set to true if using automation hub or containerized EE
			},
			validation = {
				enabled = true,
				lint = {
					enabled = true,
					path = "ansible-lint", -- or full path
				},
			},
		},
	},
}

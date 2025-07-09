-- ~/.config/nvim/lsp/helm_ls.lua
return {
	cmd = { "/home/georgi/.local/share/nvim/mason/bin/helm_ls", "serve" },
	filetypes = { "helm" },
	root_markers = {
		"Chart.yaml",
		".git",
	},
	settings = {},
}

-- ~/.config/nvim/lsp/yamlls.lua
return {
	cmd = { "yaml-language-server", "--stdio" },
	filetypes = { "yaml", "yml" },
	root_markers = {
		".git",
		".yamllint",
		"docker-compose.yml",
	},
	settings = {
		yaml = {
			keyOrdering = false, -- Prevent warnings about key order
			format = {
				enable = true,
			},
			validate = true,
			hover = true,
			completion = true,
			schemas = {
				-- Schema associations
				["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
				["https://json.schemastore.org/gitlab-ci.json"] = "/*gitlab-ci*.yml",
				["https://json.schemastore.org/kustomization.json"] = "kustomization.yaml",
				["https://json.schemastore.org/chart.json"] = "Chart.yaml",
				["https://json.schemastore.org/helm-values.json"] = "values.yaml",
				["https://json.schemastore.org/docker-compose.json"] = "*docker-compose*.yml",
			},
		},
	},
}

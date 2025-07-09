-- ~/.config/nvim/lsp/lua_ls.lua
return {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = {
		".luarc.json",
		".luarc.jsonc",
		".git",
	},
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT", -- Neovim uses LuaJIT
			},
			diagnostics = {
				globals = { "vim" }, -- Recognize the `vim` global
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true), -- Full access to Neovim runtime
				checkThirdParty = false,
			},
			telemetry = {
				enable = false,
			},
		},
	},
}

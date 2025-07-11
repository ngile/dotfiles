return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			format_on_save = {
				-- These options will be passed to conform.format()
				timeout_ms = 500,
				lsp_format = "fallback",
			},
			formatters_by_ft = {
				lua = { "stylua" },
				json = { "prettier" },
				sh = { "shfmt" },
				python = { "black" },
				yaml = { "prettier" },
				helm = { "prettier" }, -- if you want Helm templates treated as YAML
				-- add more as needed
			},
		})
	end,
}

return {
	"folke/zen-mode.nvim",
	cmd = "ZenMode",
	keys = {
		{ "<leader>bz", "<cmd>ZenMode<cr>", desc = "Zen Mode" },
	},
	opts = {
		window = {
			backdrop = 0.95,
			options = {
				signcolumn = "no",
				number = false,
				relativenumber = false,
			},
		},
	},
}

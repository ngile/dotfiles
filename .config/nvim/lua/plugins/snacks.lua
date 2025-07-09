return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		opts = {
			animate = { enabled = false },
			image = { enabled = false },
			gitbrowse = { enabled = false },
			profiler = { enabled = false },
			dim = { enabled = false },
			bigfile = { enabled = false },
			dashboard = { enabled = false },
			explorer = { enabled = true },
			indent = { enabled = false },
			input = { enabled = true },
			notifier = { enabled = true, timeout = 3000 },
			toggle = {
				enabled = true,
				which_key = {
					enabled = true,
					icons = true, -- Show icons for active/inactive toggles
					colors = true, -- Apply colors based on toggle state
				},
			},
			picker = {
				enabled = true,
				formatters = {
					file = {
						filename_first = false,
						filename_only = false,
						icon_width = 2,
					},
				},
				layout = {
					-- presets options : "default" , "ivy" , "ivy-split" , "telescope" , "vscode", "select" , "sidebar"
					-- override picker layout in keymaps function as a param below
					preset = "telescope", -- defaults to this layout unless overidden
					cycle = false,
				},
				layouts = {
					select = {
						preview = false,
						layout = {
							backdrop = false,
							width = 0.6,
							min_width = 80,
							height = 0.4,
							min_height = 10,
							box = "vertical",
							border = "rounded",
							title = "{title}",
							title_pos = "center",
							{ win = "input", height = 1, border = "bottom" },
							{ win = "list", border = "none" },
							{ win = "preview", title = "{preview}", width = 0.6, height = 0.4, border = "top" },
						},
					},
					telescope = {
						reverse = true, -- set to false for search bar to be on top
						layout = {
							box = "horizontal",
							backdrop = false,
							width = 0.8,
							height = 0.9,
							border = "none",
							{
								box = "vertical",
								{ win = "list", title = " Results ", title_pos = "center", border = "rounded" },
								{
									win = "input",
									height = 1,
									border = "rounded",
									title = "{title} {live} {flags}",
									title_pos = "center",
								},
							},
							{
								win = "preview",
								title = "{preview:Preview}",
								width = 0.50,
								border = "rounded",
								title_pos = "center",
							},
						},
					},
					ivy = {
						layout = {
							box = "vertical",
							backdrop = false,
							width = 0,
							height = 0.4,
							position = "bottom",
							border = "top",
							title = " {title} {live} {flags}",
							title_pos = "left",
							{ win = "input", height = 1, border = "bottom" },
							{
								box = "horizontal",
								{ win = "list", border = "none" },
								{ win = "preview", title = "{preview}", width = 0.5, border = "left" },
							},
						},
					},
				},
			},
			quickfile = { enabled = false },
			scope = { enabled = false },
			scroll = { enabled = false },
			statuscolumn = { enabled = true },
			words = { enabled = true },
			win = { enabled = true },
		},
		keys = {
			-- Top Pickers & Explorer
			{ "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
			{ "<leader>,", function() Snacks.picker.buffers() end, desc = "Buffers" },
			{ "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },
			{ "<leader>:", function() Snacks.picker.command_history() end, desc = "Command History" },
			{ "<leader>n", function() Snacks.picker.notifications() end, desc = "Notification History" },
			{ "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
			-- find
			{ "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
			{ "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
			{ "<leader>fg", function() Snacks.picker.git_files() end, desc = "Find Git Files" },
			{ "<leader>fp", function() Snacks.picker.projects() end, desc = "Projects" },
			{ "<leader>fr", function() Snacks.picker.recent() end, desc = "Recent" },
			-- git
			{ "<leader>gb", function() Snacks.picker.git_branches() end, desc = "Git Branches" },
			{ "<leader>gl", function() Snacks.picker.git_log() end, desc = "Git Log" },
			{ "<leader>gs", function() Snacks.picker.git_status() end, desc = "Git Status" },
			{ "<leader>gd", function() Snacks.picker.git_diff() end, desc = "Git Diff (Hunks)" },
			{ "<leader>gf", function() Snacks.picker.git_log_file() end, desc = "Git Log File" },
			-- Grep
			{ "<leader>sb", function() Snacks.picker.lines() end, desc = "Buffer Lines" },
			{ "<leader>sB", function() Snacks.picker.grep_buffers() end, desc = "Grep Open Buffers" },
			{ "<leader>sg", function() Snacks.picker.grep() end, desc = "Grep" },
			{
				"<leader>sw",
				function() Snacks.picker.grep_word() end,
				desc = "Visual selection or word",
				mode = { "n", "x" },
			},
			-- search
			{ '<leader>s"', function() Snacks.picker.registers() end, desc = "Registers" },
			{ "<leader>s/", function() Snacks.picker.search_history() end, desc = "Search History" },
			{ "<leader>sb", function() Snacks.picker.lines() end, desc = "Buffer Lines" },
			{ "<leader>sc", function() Snacks.picker.command_history() end, desc = "Command History" },
			{ "<leader>sC", function() Snacks.picker.commands() end, desc = "Commands" },
			{ "<leader>sd", function() Snacks.picker.diagnostics() end, desc = "Diagnostics" },
			{ "<leader>sD", function() Snacks.picker.diagnostics_buffer() end, desc = "Buffer Diagnostics" },
			{ "<leader>sk", function() Snacks.picker.keymaps() end, desc = "Keymaps" },
			{ "<leader>sm", function() Snacks.picker.marks() end, desc = "Marks" },
			{ "<leader>sq", function() Snacks.picker.qflist() end, desc = "Quickfix List" },
			{ "<leader>su", function() Snacks.picker.undo() end, desc = "Undo History" },
			-- LSP
			-- { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
			-- { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
			-- { "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
			-- { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
			-- { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
			-- Other
			{ "<leader>bd", function() Snacks.bufdelete() end, desc = "Delete Buffer" },
			{ "<leader>ba", function() Snacks.bufdelete.all() end, desc = "Buffer delete all", mode = "n" },
			{ "<leader>bo", function() Snacks.bufdelete.other() end, desc = "Buffer delete other", mode = "n" },
			{ "<leader>cR", function() Snacks.rename.rename_file() end, desc = "Rename File" },
			{ "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
			{ "<leader>un", function() Snacks.notifier.hide() end, desc = "Dismiss All Notifications" },
			{ "<c-/>", function() Snacks.terminal() end, desc = "Toggle Terminal" },
		},
		init = function()
			vim.api.nvim_create_autocmd("User", {
				pattern = "VeryLazy",
				callback = function()
					_G.dd = function(...) Snacks.debug.inspect(...) end
					_G.bt = function() Snacks.debug.backtrace() end
					vim.print = _G.dd -- Override print to use snacks for `:=` command

					-- Create some toggle mappings
					Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>us")
					Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
					Snacks.toggle.diagnostics():map("<leader>ud")
					Snacks.toggle.indent():map("<leader>ug")
				end,
			})
		end,
	},
}

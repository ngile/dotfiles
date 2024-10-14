return {
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			local sl_hl = vim.api.nvim_get_hl_by_name("StatusLine", true)
			vim.api.nvim_set_hl(0, "Copilot", { fg = "#6CC644", bg = sl_hl.background })
			local icons = require("core.icons")
			local diff = {
				"diff",
				colored = true,
				symbols = {
					added = icons.git.LineAdded,
					modified = icons.git.LineModified,
					removed = icons.git.LineRemoved,
				}, -- Changes the symbols used by the diff.
			}

			local copilot = function()
				local buf_clients = vim.lsp.get_active_clients({ bufnr = 0 })
				if #buf_clients == 0 then
					return "LSP Inactive"
				end

				local buf_client_names = {}
				local copilot_active = false

				for _, client in pairs(buf_clients) do
					if client.name ~= "null-ls" and client.name ~= "copilot" then
						table.insert(buf_client_names, client.name)
					end

					if client.name == "copilot" then
						copilot_active = true
					end
				end

				if copilot_active then
					return "%#Copilot#" .. icons.git.Octoface .. "%*"
				end
				return ""
			end

			require("lualine").setup({
				options = {
					-- component_separators = { left = "", right = "" },
					-- section_separators = { left = "", right = "" },
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },

					ignore_focus = { "NvimTree" },
				},
				sections = {
					-- lualine_a = { {"branch", icon =""} },
					-- lualine_b = { diff },
					-- lualine_c = { "diagnostics" },
					-- lualine_x = { copilot },
					-- lualine_y = { "filetype" },
					-- lualine_z = { "progress" },
					lualine_a = { 
                                          {"mode", icons_enabled = true},
                                          {'buffers',
                                            show_filename_only = true,
                                            show_modified_status = true,
                                            filetype_names = {
                                              TelescopePrompt = 'Telescope',
                                              dashboard = 'Dashboard',
                                              packer = 'Packer',
                                              fzf = 'FZF',
                                              alpha = 'Alpha'
                                            },
                                            use_mode_colors = true,
                                            symbols = {
                                              modified = ' ●',      -- Text to show when the buffer is modified
                                              alternate_file = '#', -- Text to show to identify the alternate file
                                              directory =  '',     -- Text to show when the buffer is a directory
                                            },
                                          },
                                        },
					lualine_b = { "branch" },
					lualine_c = { diff },
					lualine_x = { "diagnostics", copilot },
					lualine_y = { "filetype" },
					lualine_z = { "progress" },
				},
				extensions = { "quickfix", "man", "fugitive" },
			})
		end,
	},
}

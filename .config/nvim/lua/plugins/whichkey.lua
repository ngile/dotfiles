return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		config = function()
                  local wk = require("which-key")
                  wk.add({
                    { "<leader>e","<cmd>lua require('telescope').extensions.file_browser.file_browser()<cr>", desc = "File Browser"  },
                    { "<leader>f", group = "File" }, -- group
                    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
                    { "<leader>fb", "<cmd>Telescope buffers previewer=false<cr>", desc = "Buffers" },
                    { "<leader>fF", "<cmd>Telescope find_files hidden=true<cr>", desc = "Find files with hidden" },
                    { "<leader>fp", "<cmd>lua require('telescope').extensions.project.project()<cr>", desc = "Projects" },
                    { "<leader>ft", "<cmd>Telescope live_grep<cr>", desc = "Find Text" },
                    { "<leader>fs", "<cmd>Telescope grep_string<cr>", desc = "Find String" },
                    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help" },
                    { "<leader>fH", "<cmd>Telescope highlights<cr>", desc = "Highlights" },
                    { "<leader>fl", "<cmd>Telescope resume<cr>", desc = "Last Search" },
                    { "<leader>p", group = "Pluguns" }, -- group
                    {"<leader>pi", "<cmd>Lazy install<cr>", desc = "Install" },
                    {"<leader>ps", "<cmd>Lazy sync<cr>", desc = "Sync" },
                    {"<leader>pS", "<cmd>Lazy clear<cr>", desc = "Status" },
                    {"<leader>pc", "<cmd>Lazy clean<cr>", desc = "Clean" },
                    {"<leader>pu", "<cmd>Lazy update<cr>", desc = "Update" },
                    {"<leader>pp", "<cmd>Lazy profile<cr>", desc = "Profile" },
                    {"<leader>pl", "<cmd>Lazy log<cr>", desc = "Log" },
                    {"<leader>pd", "<cmd>Lazy debug<cr>", desc = "Debug" },
                    { "<leader>B", group = "Debug" }, -- group
                    {"<leader>Bt", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", desc = "Toggle Breakpoint" },
                    {"<leader>Bb", "<cmd>lua require'dap'.step_back()<cr>", desc = "Step Back" },
                    {"<leader>Bc", "<cmd>lua require'dap'.continue()<cr>", desc = "Continue" },
                    {"<leader>BC", "<cmd>lua require'dap'.run_to_cursor()<cr>", desc = "Run To Cursor" },
                    {"<leader>Bd", "<cmd>lua require'dap'.disconnect()<cr>", desc = "Disconnect" },
                    {"<leader>Bg", "<cmd>lua require'dap'.session()<cr>", desc = "Get Session" },
                    {"<leader>Bi", "<cmd>lua require'dap'.step_into()<cr>", desc = "Step Into" },
                    {"<leader>Bo", "<cmd>lua require'dap'.step_over()<cr>", desc = "Step Over" },
                    {"<leader>Bu", "<cmd>lua require'dap'.step_out()<cr>", desc = "Step Out" },
                    {"<leader>Bp", "<cmd>lua require'dap'.pause()<cr>", desc = "Pause" },
                    {"<leader>Br", "<cmd>lua require'dap'.repl.toggle()<cr>", desc = "Toggle Repl" },
                    {"<leader>Bs", "<cmd>lua require'dap'.continue()<cr>", desc = "Start" },
                    {"<leader>Bv", "<cmd>lua require'dapui'.eval(nil, {enter = true})<cr>", desc = "Eval var under cursor"},
                    {"<leader>BU", "<cmd>lua require'dapui'.toggle({reset = true})<cr>", desc = "Toggle UI" },
                    { "<leader>G", group = "Git" }, -- group
                    {"<leader>Gj", "<cmd>lua require 'gitsigns'.next_hunk({navigation_message = false})<cr>", desc = "Next Hunk" },
                    {"<leader>Gk", "<cmd>lua require 'gitsigns'.prev_hunk({navigation_message = false})<cr>", desc = "Prev Hunk" },
                    {"<leader>Gl", "<cmd>lua require 'gitsigns'.blame_line()<cr>", desc = "Blame" },
                    {"<leader>Gp", "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", desc = "Preview Hunk" },
                    {"<leader>Gr", "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", desc = "Reset Hunk" },
                    {"<leader>GR", "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", desc = "Reset Buffer" },
                    {"<leader>Gs", "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", desc = "Stage Hunk" },
                    {"<leader>Gu", "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", desc = "Undo Stage Hunk", },
                    {"<leader>Go", "<cmd>Telescope git_status<cr>", desc = "Open changed file" },
                    {"<leader>Gb", "<cmd>Telescope git_branches<cr>", desc = "Checkout branch" },
                    {"<leader>Gc", "<cmd>Telescope git_commits<cr>", desc = "Checkout commit" },
                    {"<leader>GC", "<cmd>Telescope git_bcommits<cr>", desc = "Checkout commit(for current file)", },
                    {"<leader>Gd", "<cmd>Gitsigns diffthis HEAD<cr>", desc = "Git Diff", },
                    { "<leader>l", group = "LSP" }, -- group
                    {"<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action" },
                    {"<leader>lc", "<cmd>Telescope commands<cr>", desc = "List commands" },
                    {"<leader>ld", "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>", desc = "Buffer Diagnostics" },
                    {"<leader>lw", "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics" },
                    {"<leader>lf", "<cmd>lua vim.lsp.buf.format({timeout_ms = 1000000})<cr>", desc = "Format" },
                    {"<leader>li", "<cmd>LspInfo<cr>", desc = "Info" },
                    {"<leader>lI", "<cmd>Mason<cr>", desc = "Mason Info" },
                    {"<leader>lj", "<cmd>lua vim.diagnostic.goto_next()<cr>", desc = "Next Diagnostic", },
                    {"<leader>lk", "<cmd>lua vim.diagnostic.goto_prev()<cr>", desc = "Prev Diagnostic", },
                    {"<leader>ll", "<cmd>lua vim.lsp.codelens.run()<cr>", desc = "CodeLens Action" },
                    {"<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename" },
                    {"<leader>ls", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Document Symbols" },
                    {"<leader>lS", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", desc = "Workspace Symbols", },
                    {"<leader>le", "<cmd>Telescope quickfix<cr>", desc = "Telescope Quickfix" },
                  })
		end,
	},
}

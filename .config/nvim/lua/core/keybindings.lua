local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<c-s>", ":w<CR>", {})
keymap("i", "<c-s>", "<ESC>:w<CR>a", {})

keymap("n", "<c-j>", "<c-w>j", opts)
keymap("n", "<c-h>", "<c-w>h", opts)
keymap("n", "<c-k>", "<c-w>k", opts)
keymap("n", "<c-l>", "<c-w>l", opts)

keymap("n", "G", "Gzz", opts)
keymap("n", "}", "}zz", opts)
keymap("n", "{", "{zz", opts)

-- LSP type definition
keymap("n", "grt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)

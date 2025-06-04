local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
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

keymap("v", "<leader>64e", "c<c-r>=system('base64 --wrap=0 ', @\")<cr><esc>", opts)
keymap("v", "<leader>64d", "c<c-r>=system('base64 --wrap=0 --decode', @\")<cr><esc>", opts)

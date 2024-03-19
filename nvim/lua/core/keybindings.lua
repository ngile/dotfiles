local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap('n', '<c-s>', ':w<CR>', {})
keymap('i', '<c-s>', '<ESC>:w<CR>a', {})


keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)
keymap('n', 'G', 'Gzz', opts)
keymap('n', '}', '}zz', opts)
keymap('n', '{', '{zz', opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>bw", ":bw<CR>", opts)

-- keymap("n", "<leader>ff", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
-- keymap("n", "<leader>fg","<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
-- --[[ keymap("n", "<leader>ee", "<cmd>lua require'nvim-tree'.toggle(false)<cr>", opts) ]]
-- keymap("n", "<leader>ee", "<cmd>lua require'nvim-tree.api'.tree.toggle()<cr>", opts)
-- keymap("n", "<leader>fe", "<cmd>lua require'telescope'.extensions.file_browser.file_browser()<cr>", opts)
-- keymap("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", opts)
--
keymap("v", "<leader>64e", "c<c-r>=system('base64 --wrap=0 ', @\")<cr><esc>", opts)
keymap("v", "<leader>64d", "c<c-r>=system('base64 --wrap=0 --decode', @\")<cr><esc>", opts)

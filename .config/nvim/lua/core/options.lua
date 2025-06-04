local o = {
	nu = true,
	rnu = true,
	expandtab = true,
	shiftwidth = 2,
	softtabstop = 2,
	termguicolors = true,
	history = 700,
	undolevels = 700,
	ruler = true,
	wildmenu = true,
	ignorecase = true,
	smartcase = true,
	hlsearch = true,
	incsearch = true,
	magic = true,
	showmatch = true,
	mat = 3,
	cursorcolumn = true,
	cursorline = true,
	background = "dark",
	autoindent = true,
	completeopt = { "menu", "menuone", "noselect" },
	mouse = a,
	splitright = true,
}

local g = {
	ffs = unix,
	dos,
	mac,
	encoding = utf8,
	noswapfile = true,
	nobackup = true,
	backspace = eol,
	start,
	indent,
	t_Co = 256,
	mouse = a,
	snacks_animate = false,
}
vim.g.snacks_animate = false
for k, v in pairs(o) do
	vim.opt[k] = v
end

for k, v in pairs(g) do
	vim.g[k] = v
end

--vim.autocmd FileType=yaml setlocal indentkeys-=<:>
--
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "*.gitlab-ci.{yml,yaml}",
	callback = function() vim.bo.filetype = "yaml.gitlab" end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "yaml",
	callback = function() vim.opt_local.indentkeys = "!^F,o,O,0#,0},0],0-" end,
})

-- vim.cmd [[colorscheme melange]]

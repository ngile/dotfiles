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
  autoindent = true
}

local g = {
  ffs = unix,dos,mac,
  encoding = utf8,
  noswapfile = true,
  nobackup = true,
  backspace = eol,start,indent,
  t_Co = 256,
  mouse = a
}


for k,v in pairs(o) do vim.opt[k] = v end

for k,v in pairs(g) do vim.g[k] = v end

vim.cmd [[colorscheme melange]]

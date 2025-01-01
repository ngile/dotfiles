require "core.options"
require "core.keybindings"
require "core.lazy"

if vim.g.neovide then
  vim.g.neovide_cursor_animation_length = 0
  vim.o.guifont = "FiraCode Nerd Font:h12"
  vim.g.neovide_transparency = 0.9
  vim.g.neovide_cursor_antialiasing = false
end

return {
  { 
    "savq/melange-nvim",
 --   lazy = true,
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
        -- load the colorscheme here
      vim.cmd([[colorscheme melange]])
      end,
  },
    {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
    },
  },
}

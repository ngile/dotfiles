return {
  { 
    "folke/neodev.nvim",
    lazy = false,
    config = function()
      require("neodev").setup{
        lspconfig = true,
      }
    end,
  },
}

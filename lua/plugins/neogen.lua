return {
  "danymat/neogen",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("neogen").setup({
      enabled = true,
      languages = {
        javascript = { template = "jsdoc" },
        typescript = { template = "jsdoc" },
      },
    })
  end,
  keys = {
    { "<leader>cd", ":Neogen<CR>", desc = "Generate JSDoc" },
  },
}

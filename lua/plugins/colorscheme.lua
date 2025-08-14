return {
  -- { "ellisonleao/gruvbox.nvim" },
  -- { "miikanissi/modus-themes.nvim", priority = 1000 },
  -- {"vague2k/vague.nvim"},
  -- { "bettervim/yugen.nvim" },
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "modus",
  --   },
  -- },
  -- {
  --   "adibhanna/forest-night.nvim",
  --   priority = 1000,
  --   config = function()
  --     vim.cmd([[colorscheme forest-night]])
  --   end,
  -- },
  {
    "bettervim/yugen.nvim",
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme yugen]])
    end,
  },
}

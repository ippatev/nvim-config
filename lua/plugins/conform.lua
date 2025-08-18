local is_windows = vim.fn.has("win32") == 1

return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      mdx = { "prettierd" },
      ["markdown.mdx"] = { "prettierd" },
      lua = { "stylua" },
      javascript = { "prettierd" },
      typescript = { "prettierd" },
      json = { "prettierd" },
      markdown = { "prettierd" },
    },
    formatters = {
      prettierd = {
        command = is_windows and vim.fn.expand("$LocalAppData\\nvim-data\\mason\\bin\\prettierd.cmd")
          or "~/.local/share/nvim/mason/bin/prettierd",
      },
      stylua = {
        command = is_windows and vim.fn.expand("$LocalAppData\\nvim-data\\mason\\bin\\stylua.cmd")
          or "~/.local/share/nvim/mason/bin/stylua",
      },
    },
  },
}

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
        command = vim.fn.expand("$LocalAppData\\nvim-data\\mason\\bin\\prettierd.cmd"),
      },
      stylua = {
        command = vim.fn.expand("$LocalAppData\\nvim-data\\mason\\bin\\stylua.cmd"),
      },
    },
  },
}

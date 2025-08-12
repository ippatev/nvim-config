-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.autoformat = false
vim.opt.clipboard = "unnamedplus"
vim.g.lazyvim_prettier_needs_config = false
vim.env.FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --no-ignore-vcs -g "!{.git,node_modules}"'
vim.filetype.add({
  extension = {
    mdx = "mdx",
  },
})
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.mdx",
  callback = function()
    vim.bo.filetype = "mdx"
  end,
})

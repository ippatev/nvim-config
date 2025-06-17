-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Удаляем стандартный keymap <Space>e
vim.keymap.del("n", "<leader>e", { silent = true })

-- Toggle для mini.files
vim.keymap.set("n", "<leader>e", function()
  local mf = require("mini.files")
  if not mf.close() then
    mf.open(vim.api.nvim_buf_get_name(0), true)
  end
end, { desc = "Toggle mini.files" })

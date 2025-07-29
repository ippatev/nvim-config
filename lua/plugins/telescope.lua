return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = 'powershell -Command "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release; cmake --build build --config Release"',
      },
    },
    config = function()
      require("telescope").setup({
        defaults = {
          file_ignore_patterns = { "%.git/.*", "node_modules/.*" },
        },
        pickers = {
          find_files = {
            -- theme = "ivy",
            hidden = true,
            no_ignore = false,
          },
        },
      })

      vim.keymap.set("n", "<space>fh", require("telescope.builtin").help_tags)
      vim.keymap.set("n", "<space>fd", require("telescope.builtin").find_files)
    end,
  },
}

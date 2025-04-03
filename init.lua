-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("sg").setup({
  enable_cody = true,
  accept_tos = true,
  -- download_blnaries = true,
  lsp = {
    preload_files = false,
  },
  endpoint = "https://sourcegraph.com",
  token = "sgp_fd1b4edb60bf82b8_43181da1aaa4ca815d59ef68f97372cd65e857b0",
})

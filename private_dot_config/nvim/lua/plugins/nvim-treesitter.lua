return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },
    config = function()  
      local treesitter = require("nvim-treesitter.configs")

      -- configure treesitter
      treesitter.setup({
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = {
          "bash",
          "c",
          "json",
          "lua",
          "markdown",
          "python",
          "regex",
          "rust",
          "toml",
          "vim",
          "vimdoc",
          "yaml",
        },
      })
    end,
  },
}

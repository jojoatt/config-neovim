return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  lazy = false,
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    -- configure treesitter
    treesitter.setup({
      -- enable syntax highlighting
      highlight = {
        enable = true,
      },
      -- enable indentation
      indent = {
        enable = true,
      },
      -- enable autotagging
      autotag = {
        enable = true,
      },
      -- ensure these language parsers are installed
      ensure_installed = {
        "angular",
        "bash",
		    "c",
		    "cpp",
        "cmake",
        "c_sharp",
		    "css",
		    "dockerfile",
		    "gitignore",
		    "graphql",
		    "html",
        "hcl",
        "helm",
        "terraform",
	  	  "javascript",
        "python",
		    "json",
		    "lua",
		    "java",
        "go",
        "xml",
		    "markdown",
        "markdown_inline",
		    "prisma",
        "groovy",
		    "regex",
		    "rust",
		    "scss",
		    "toml",
		    "tsx",
		    "typescript",
		    "vim",
        "yaml"
      },
    })
  end
}

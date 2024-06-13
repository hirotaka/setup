return {

  -- Ensure GH tool is installed
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "gh" })
    end,
  },
  -- {
  --   "pwntester/octo.nvim",
  --   cmd = { "Octo" },
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-telescope/telescope.nvim",
  --     "nvim-tree/nvim-web-devicons",
  --     -- 1Password plugin for Neovim
  --     "mrjones2014/op.nvim",
  --     -- another plugin to make the UI a bit nicer
  --     "stevearc/dressing.nvim",
  --   },
  --   opts = function(_, opts)
  --     local op = require("op.api")
  --     local gh_env = function()
  --       -- the 'op.api' module provides the same interface as the CLI
  --       -- each subcommand accepts a list of arguments
  --       -- and returns a list of output lines.
  --       -- use it to retrieve the GitHub access token from 1Password
  --       local github_token = op.item.get({ "GitHub", "--fields", "token" })[1]
  --       if not github_token or not vim.startswith(github_token, "ghp_") then
  --         error("Failed to get GitHub token.")
  --       end
  --
  --       -- the values in this table will be provided to the
  --       -- GitHub CLI as environment variables when invoked,
  --       -- with the table keys (e.g. GITHUB_TOKEN) being the
  --       -- environment variable name, and the values (e.g. github_token)
  --       -- being the variable value
  --       return { GITHUB_TOKEN = github_token }
  --     end
  --     opts.picker = "telescope"
  --     opts.gh_env = gh_env()
  --   end,
  -- },
}

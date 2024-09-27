return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "s1n7ax/nvim-window-picker",
      opts = {},
    },
    keys = {
      { "<leader>n", "<cmd>Neotree<cr>", desc = "NeoTree" },
    },
  },
  -- {
  --   "rcarriga/nvim-notify",
  --   config = function()
  --     require("notify").setup({
  --       background_colour = "#000000",
  --     })
  --   end,
  -- },
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "moon",
      -- transparent = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        -- sidebars = "transparent",
        -- floats = "transparent",
      },
    },
  },
  {
    "folke/edgy.nvim",
    opts = {
      options = {
        left = { size = 39 },
      },
      bottom = {
        {
          ft = "toggleterm",
          size = { height = 0.4 },
          filter = function(buf, win)
            return vim.api.nvim_win_get_config(win).relative == ""
          end,
        },
        {
          ft = "noice",
          size = { height = 0.4 },
          filter = function(buf, win)
            return vim.api.nvim_win_get_config(win).relative == ""
          end,
        },
        {
          ft = "lazyterm",
          title = "LazyTerm",
          size = { height = 0.4 },
          filter = function(buf)
            return not vim.b[buf].lazyterm_cmd
          end,
        },
        "Trouble",
        { ft = "qf", title = "QuickFix" },
        {
          ft = "help",
          size = { height = 20 },
          -- don't open help files in edgy that we're editing
          filter = function(buf)
            return vim.bo[buf].buftype == "help"
          end,
        },
        { title = "Spectre", ft = "spectre_panel", size = { height = 0.4 } },
        { title = "Neotest Output", ft = "neotest-output-panel", size = { height = 15 } },
      },
      left = {
        {
          title = "Neo-Tree",
          ft = "neo-tree",
          filter = function(buf)
            return vim.b[buf].neo_tree_source == "filesystem"
          end,
          pinned = true,
          open = function()
            vim.api.nvim_input("<esc><space>e")
          end,
          size = { height = 0.5 },
        },
        { title = "Neotest Summary", ft = "neotest-summary" },
        {
          title = "Neo-Tree Buffers",
          ft = "neo-tree",
          filter = function(buf)
            return vim.b[buf].neo_tree_source == "buffers"
          end,
          pinned = true,
          open = "Neotree position=top buffers",
        },
        {
          title = "Neo-Tree Git",
          ft = "neo-tree",
          filter = function(buf)
            return vim.b[buf].neo_tree_source == "git_status"
          end,
          pinned = true,
          open = "Neotree position=right git_status",
        },
        "neo-tree",
      },
      right = {
        -- {
        --   ft = "lazyterm",
        --   title = "LazyTerm",
        --   size = { width = 0.5 },
        --   filter = function(buf)
        --     return not vim.b[buf].lazyterm_cmd
        --   end,
        -- },
      },
      keys = {
        -- increase width
        ["<a-Left>"] = function(win)
          win:resize("width", -2)
        end,
        -- decrease width
        ["<a-Right>"] = function(win)
          win:resize("width", 2)
        end,
        -- increase height
        ["<a-Up>"] = function(win)
          win:resize("height", 2)
        end,
        -- decrease height
        ["<a-Down>"] = function(win)
          win:resize("height", -2)
        end,
      },
    },
  },
}

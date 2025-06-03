return {
  {
    "bufferline.nvim",
    enabled = true,
  },
  {
    "dashboard-nvim",
    enabled = true,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      render = "compact",
    },
  },
  -- Enable for live command output.
  -- {
  --   "folke/noice.nvim",
  --   opts = {
  --     messages = {
  --       enabled = false
  --     }
  --   }
  -- },
  {
    "flash.nvim",
    opts = {
      modes = {
        char = {
          enabled = true,
        },
        search = {
          enabled = true,
        },
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      pickers = {
        lsp_dynamic_workspace_symbols = { symbol_width = 60 },
        lsp_document_symbols = { symbol_width = 60 },
      },
      defaults = {
        mappings = {
          i = {
            ["<c-h>"] = "which_key",
            ["<c-d>"] = require("telescope.actions").delete_buffer,
          },
          n = {
            ["<c-d>"] = require("telescope.actions").delete_buffer,
          },
        },
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local null_ls = require("null-ls")
      opts.sources = nil
    end,
  },
}

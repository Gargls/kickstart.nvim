return {
  -- -- Godot LSP
  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = {
  --     servers = {
  --       gdscript = {},
  --     },
  --     setup = {
  --       gdscript = function(_, opts)
  --         require("lspconfig").gdscript.setup({
  --           capabilities = opts.capabilities,
  --         })
  --         return true
  --       end,
  --     },
  --   },
  -- },
  --

  {
    "Mathijs-Bakker/godotdev.nvim",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },

    init = function()
      vim.filetype.add({
        extension = {
          gd = "gdscript",
          gdscript3 = "gdscript",
        },
      })
    end,

    ft = { "gd", "gdscript" },
    config = function()
      require("godotdev").setup({
        editor_host = "127.0.0.1",
        editor_port = 6005,
        debug_port = 6006,
        csharp = true,
        autostart_editor_server = false,
        formatter = "gdscript-formatter",
        formatter_cmd = nil,
        inline_hints = { enabled = false },
        run = {
          console = {
            enabled = false,
            renderer = "buffer",
            buffer = { position = "bottom", size = 0.3 },
            float = { width = 0.8, height = 0.25, border = "rounded" },
          },
        },
        scene_tree = {
          buffer = { position = "left", size = 0.35 },
          icons = "nerdfont",
          icon_colors = {
            generic = { fg = "white" },
            groups = {
              White = { fg = "white" },
              Grey = { fg = "grey" },
              Blue = { fg = "blue" },
              Red = { fg = "red" },
              Green = { fg = "green" },
              Purple = { fg = "magenta" },
              Yellow = { fg = "gold" },
            },
          },
        },
        editor_server = {
          address = nil,
          remove_stale_socket = true,
        },
        treesitter = {
          auto_setup = true,
          ensure_installed = { "gdscript" },
        },
        docs = {
          renderer = "float",
          fallback_renderer = "browser",
          missing_symbol_feedback = "message",
          version = "stable",
          language = "en",
          source_ref = "master",
          source_base_url = nil,
          timeout_ms = 10000,
          cache = { enabled = true, max_entries = 64 },
          float = { width = 0.8, height = 0.8, border = "rounded" },
          buffer = { position = "right", size = 0.4 },
        },
      })
    end,
  },
}

--
--   -- Formatting
--   {
--     "stevearc/conform.nvim",
--     opts = {
--       format_on_save = {
--         timeout_ms = 500,
--         lsp_fallback = true,
--       },
--
--       formatters_by_ft = {
--         gdscript = { "gdformat" },
--       },
--     },
--   },
--   -- Linting
--   {
--     "mfussenegger/nvim-lint",
--     opts = {
--       linters_by_ft = {
--         gdscript = { "gdlint" },
--       },
--     },
--   },
-- }

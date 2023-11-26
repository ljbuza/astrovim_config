return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
     "nvim-neotest/neotest-python",
     {
     "christoomey/vim-tmux-navigator",
     lazy = false
     },
     "sindrets/diffview.nvim",
  -- "andweeb/presence.nvim",
  -- {
  --   "rcarriga/nvim-dap-ui",
  --   dependencies = { "mfussenegger/nvim-dap" },
  --   config = function()
  --     local dap = require("dap")
  --     local dapui = require("dapui")
  --     dapui.setup()
  --     dap.listeners.after.event_initialized["dapui_config"] = function()
  --       dapui.open()
  --     end
  --     dap.listeners.after.event_terminated["dapui_config"] = function()
  --       dapui.close()
  --     end
  --     dap.listeners.after.event_exited["dapui_config"] = function()
  --       dapui.close()
  --     end
  --   end
  -- },
  -- {
  -- "mfussenegger/nvim-dap",
  -- },
  -- {
  --   "mfussenegger/nvim-dap-python",
  --   ft = "python",
  --   dependencies = { 
  --     "mfussenegger/nvim-dap",
  --     "rcarriga/nvim-dap-ui",
  --   },
  --   config = function(_, opts)
  --   local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
  --   require("dap-python").setup(path)
  --   end,
  -- }
  -- -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}

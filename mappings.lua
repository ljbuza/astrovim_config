-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
-- local M = {};
--
-- M.dap = {
--   plugin = true,
--   n = {
--     ["<leader>db"] = { function() require("dap").toggle_breakpoint() end, desc = "Toggle breakpoint" },
--     ["<leader>dB"] = { function() require("dap").clear_breakpoints() end, desc = "Clear breakpoints" },
--     ["<leader>dc"] = { function() require("dap").continue() end, desc = "Start/Continue (F5)" },
--     ["<leader>dC"] = { function() require("dap").set_breakpoint() end, desc = "Conditional Breakpoint (S-F9)" },
--     ["<leader>di"] = { function() require("dap").step_into() end, desc = "Step Into (F11)" },
--     ["<leader>do"] = { function() require("dap").step_over() end, desc = "Step Over (F10)" },
--     ["<leader>dO"] = { function() require("dap").step_out() end, desc = "Step Out (S-F11)" },
--     ["<leader>dq"] = { function() require("dap").close() end, desc = "Close Session" },
--     ["<leader>dQ"] = { function() require("dap").terminate() end, desc = "Terminate Session (S-F5)" },
--     ["<leader>dp"] = { function() require("dap").pause() end, desc = "Pause (F6)" },
--     ["<leader>ds"] = { function() require("dap").summary.toggle() end, desc = "Summary" },
--   }
-- }
-- M.dap_python = {
--   plugin = true,
--   n = {
--     ["<leader>dpr"] = {
--       function()
--       require('dap-python').test_method()
--       end
--     }
--   }
-- }
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },
    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}

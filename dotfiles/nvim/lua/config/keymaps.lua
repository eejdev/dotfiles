-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Test keymaps
map("n", "<leader>tt", function() require("neotest").run.run() end, opts)
map("n", "<leader>tf", function() require("neotest").run.run(vim.fn.expand("%")) end, opts)
map("n", "<leader>ts", function() require("neotest").summary.toggle() end, opts)
map("n", "<leader>to", function() require("neotest").output.open({ enter = true }) end, opts)

-- DAP keymaps
map("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", opts)
map("n", "<leader>dc", "<cmd>lua require'dap'.continue()<CR>", opts)
map("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<CR>", opts)
map("n", "<leader>dPt", function() require('dap-python').test_method() end, opts)

-- Harpoon
vim.keymap.set("n", "<leader>h", require("harpoon.ui").toggle_quick_menu, { desc = "Harpoon Menu" })

-- Launch Oil file-browser
vim.keymap.set("n", "-", function() vim.cmd.Ex() end, { desc = "Open Oil Explorer" })

-- Snacks Keymaps
vim.keymap.set("n", "<C-p>", function()
  require("snacks").pickers.find_files()
end, { desc = "Find Files (snacks)", noremap = true, silent = true })


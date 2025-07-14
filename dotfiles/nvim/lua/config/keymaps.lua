-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Test keymaps
map("n", "<leader>tt", function()
  require("neotest").run.run()
end, opts)
map("n", "<leader>tf", function()
  require("neotest").run.run(vim.fn.expand("%"))
end, opts)
map("n", "<leader>ts", function()
  require("neotest").summary.toggle()
end, opts)
map("n", "<leader>to", function()
  require("neotest").output.open({ enter = true })
end, opts)

-- DAP keymaps
map("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", opts)
map("n", "<leader>dc", "<cmd>lua require'dap'.continue()<CR>", opts)
map("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<CR>", opts)
map("n", "<leader>dPt", function()
  require("dap-python").test_method()
end, opts)

-- Harpoon
vim.keymap.set("n", "<leader>h", require("harpoon.ui").toggle_quick_menu, { desc = "Harpoon Menu" })

-- Launch Oil file-browser
vim.keymap.set("n", "-", function()
  vim.cmd.Ex()
end, { desc = "Open Oil Explorer" })

-- Snacks Keymaps
vim.keymap.set("n", "<C-p>", function()
  require("snacks").pickers.find_files()
end, { desc = "Find Files (snacks)", noremap = true, silent = true })

-- Harpoon keymaps
local harpoon = require("harpoon")

-- Add current file to Harpoon list
map("n", "<leader>ha", function()
  harpoon:list():add()
end, { desc = "Harpoon: Add file", noremap = true, silent = true })

-- Toggle Harpoon menu (already present, but consistent here)
map("n", "<leader>hh", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Harpoon: Menu", noremap = true, silent = true })

-- Quick nav to first 4 files
map("n", "<leader>1", function()
  harpoon:list():select(1)
end, { desc = "Harpoon: Go to file 1", noremap = true, silent = true })

map("n", "<leader>2", function()
  harpoon:list():select(2)
end, { desc = "Harpoon: Go to file 2", noremap = true, silent = true })

map("n", "<leader>3", function()
  harpoon:list():select(3)
end, { desc = "Harpoon: Go to file 3", noremap = true, silent = true })

map("n", "<leader>4", function()
  harpoon:list():select(4)
end, { desc = "Harpoon: Go to file 4", noremap = true, silent = true })

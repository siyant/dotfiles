-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Swap root/cwd keymaps: prefer cwd (lowercase) over root (uppercase)
local map = vim.keymap.set

-- Explorer: swap so lowercase is cwd, uppercase is root
map("n", "<leader>e", function() Snacks.explorer() end, { desc = "Explorer (cwd)" })
map("n", "<leader>E", function() Snacks.explorer({ cwd = LazyVim.root() }) end, { desc = "Explorer (root)" })
map("n", "<leader>fe", function() Snacks.explorer() end, { desc = "Explorer (cwd)" })
map("n", "<leader>fE", function() Snacks.explorer({ cwd = LazyVim.root() }) end, { desc = "Explorer (root)" })

-- Find Files: swap so lowercase is cwd, uppercase is root
map("n", "<leader><space>", LazyVim.pick("files", { root = false }), { desc = "Find Files (cwd)" })
map("n", "<leader>ff", LazyVim.pick("files", { root = false }), { desc = "Find Files (cwd)" })
map("n", "<leader>fF", LazyVim.pick("files"), { desc = "Find Files (root)" })

-- Grep: swap so lowercase is cwd, uppercase is root
map("n", "<leader>/", LazyVim.pick("live_grep", { root = false }), { desc = "Grep (cwd)" })
map("n", "<leader>sg", LazyVim.pick("live_grep", { root = false }), { desc = "Grep (cwd)" })
map("n", "<leader>sG", LazyVim.pick("live_grep"), { desc = "Grep (root)" })

-- Grep Word: swap so lowercase is cwd, uppercase is root
map({ "n", "x" }, "<leader>sw", LazyVim.pick("grep_word", { root = false }), { desc = "Word (cwd)" })
map({ "n", "x" }, "<leader>sW", LazyVim.pick("grep_word"), { desc = "Word (root)" })

-- Recent Files: swap so lowercase is cwd, uppercase is all
map("n", "<leader>fr", function() Snacks.picker.recent({ filter = { cwd = true }}) end, { desc = "Recent (cwd)" })
map("n", "<leader>fR", LazyVim.pick("oldfiles"), { desc = "Recent (all)" })

-- Save file
map("n", "<leader>fs", "<cmd>w<cr>", { desc = "Save File" })

-- Terminal: swap so lowercase is cwd, uppercase is root
map("n", "<leader>ft", function() Snacks.terminal(nil) end, { desc = "Terminal (cwd)" })
map("n", "<leader>fT", function() Snacks.terminal(nil, { cwd = LazyVim.root() }) end, { desc = "Terminal (root)" })

-- Lazygit: swap so lowercase is cwd, uppercase is root
map("n", "<leader>gg", function() Snacks.lazygit({ cwd = vim.fn.getcwd() }) end, { desc = "Lazygit (cwd)" })
map("n", "<leader>gG", function() Snacks.lazygit({ cwd = LazyVim.root() }) end, { desc = "Lazygit (root)" })

-- Git Log: swap so lowercase is cwd, uppercase is root
map("n", "<leader>gl", function() Snacks.picker.git_log({ cwd = vim.fn.getcwd() }) end, { desc = "Git Log (cwd)" })
map("n", "<leader>gL", function() Snacks.picker.git_log() end, { desc = "Git Log (root)" })

map("n", "<leader>bx", function()
  Snacks.bufdelete.all()
end, { desc = "Close All Buffers" })

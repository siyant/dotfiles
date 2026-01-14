-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local explorer_group = vim.api.nvim_create_augroup("auto_explorer", { clear = true })

-- Auto-reload files when changed externally
local autoreload_group = vim.api.nvim_create_augroup("autoreload_external_changes", { clear = true })

vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
  group = autoreload_group,
  pattern = "*",
  callback = function()
    if vim.fn.mode() ~= "c" then
      vim.cmd("checktime")
    end
  end,
})

local group = explorer_group

vim.api.nvim_create_autocmd("VimEnter", {
  group = group,
  callback = function()
    -- Skip headless runs (e.g. during :Lazy sync)
    if #vim.api.nvim_list_uis() == 0 then
      return
    end

    local ok, snacks = pcall(require, "snacks")
    if not ok or not snacks or not snacks.explorer then
      return
    end

    vim.schedule(function()
      snacks.explorer()
    end)
  end,
})

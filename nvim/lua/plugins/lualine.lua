return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    -- Section B: root directory (replaces branch, keeps the background color)
    opts.sections.lualine_b = {
      LazyVim.lualine.root_dir({ icon = "" }),
    }

    -- Rebuild section C: diagnostics, full file path (no filetype icon)
    local icons = LazyVim.config.icons
    opts.sections.lualine_c = {
      {
        "diagnostics",
        symbols = {
          error = icons.diagnostics.Error,
          warn = icons.diagnostics.Warn,
          info = icons.diagnostics.Info,
          hint = icons.diagnostics.Hint,
        },
      },
      { LazyVim.lualine.pretty_path({ length = 0, relative = "root" }) },
    }

    -- Add trouble.nvim symbols (function/class names at cursor)
    if vim.g.trouble_lualine ~= false and LazyVim.has("trouble.nvim") then
      local trouble = require("trouble")
      local symbols = trouble.statusline({
        mode = "symbols",
        groups = {},
        title = false,
        filter = { range = true },
        format = "{kind_icon}{symbol.name:Normal}",
        hl_group = "lualine_c_normal",
      })
      table.insert(opts.sections.lualine_c, {
        symbols and symbols.get,
        cond = function()
          return vim.b.trouble_lualine ~= false and symbols.has()
        end,
      })
    end

    -- Remove time (empty section Z)
    opts.sections.lualine_z = {}

    return opts
  end,
}

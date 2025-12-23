local bg = "#12191d"

return {
  {
    "dupeiran001/nord.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      on_colors = function(colors)
        -- Darker background to match Zed settings
        colors.bg = "#12191d"
        colors.bg_dark = "#12191d"
        colors.bg_sidebar = "#12191d"
        colors.bg_float = "#12191d"
      end,
      on_highlights = function(hl, c)
        -- Editor backgrounds
        hl.Normal = { bg = "#12191d", fg = c.fg }
        hl.NormalNC = { bg = "#12191d", fg = c.fg }
        hl.NormalFloat = { bg = "#12191d", fg = c.fg }
        hl.NormalSB = { bg = "#12191d", fg = c.fg }
        hl.SignColumn = { bg = "#12191d" }
        hl.LineNr = { bg = "#12191d" }
        hl.CursorLineNr = { bg = "#1a242b" }
        hl.CursorLine = { bg = "#1a242b" }

        -- Variable highlight (cursor on variable)
        hl.LspReferenceText = { bg = "#3c4151" }
        hl.LspReferenceRead = { bg = "#3c4151" }
        hl.LspReferenceWrite = { bg = "#3c4151" }
        hl.IlluminatedWordText = { bg = "#3c4151" }
        hl.IlluminatedWordRead = { bg = "#3c4151" }
        hl.IlluminatedWordWrite = { bg = "#3c4151" }

        -- File tree / sidebar
        hl.NeoTreeNormal = { bg = "#12191d" }
        hl.NeoTreeNormalNC = { bg = "#12191d" }
        hl.NeoTreeEndOfBuffer = { bg = "#12191d" }
        hl.NeoTreeIndentMarker = { fg = "#3b4252" }

        -- Snacks picker/explorer tree lines
        hl.SnacksPickerTree = { fg = "#3b4252" }
        hl.SnacksIndent = { fg = "#3b4252" }
        hl.SnacksIndentScope = { fg = "#3b4252" }

        -- Tab bar
        hl.TabLine = { bg = "#12191d" }
        hl.TabLineFill = { bg = "#12191d" }
        hl.TabLineSel = { bg = "#12191d" }

        -- Status line and lualine
        hl.StatusLine = { bg = "#12191d" }
        hl.StatusLineNC = { bg = "#12191d" }
        hl.lualine_c_normal = { bg = "#2c323e" }
        hl.lualine_c_insert = { bg = "#2c323e" }
        hl.lualine_c_visual = { bg = "#2c323e" }
        hl.lualine_c_replace = { bg = "#2c323e" }
        hl.lualine_c_command = { bg = "#2c323e" }
        hl.lualine_c_inactive = { bg = "#2c323e" }

        -- Floating windows / popups
        hl.FloatBorder = { bg = "#12191d" }
        hl.Pmenu = { bg = "#12191d" }

        -- Terminal
        hl.TerminalNormal = { bg = "#12191d" }
      end,
    },
    config = function(_, opts)
      require("nord").setup(opts)
      vim.cmd.colorscheme("nord")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nord",
    },
  },
}

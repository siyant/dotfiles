-- Disable markdownlint for markdown in LazyVim
return {
  "mfussenegger/nvim-lint",
  opts = function(_, opts)
    opts.linters_by_ft = opts.linters_by_ft or {}

    -- No linters for markdown files
    opts.linters_by_ft.markdown = {}
    opts.linters_by_ft["markdown.mdx"] = {}
  end,
}

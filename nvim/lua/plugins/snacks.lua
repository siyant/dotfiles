return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        -- Transform to show full relative file path in preview title
        transform = function(item)
          if item.file then
            item.preview_title = item.file
          end
        end,
        sources = {
          files = {
            hidden = true,
            ignored = false,
          },
          explorer = {
            hidden = true,
            ignored = false,
          },
        },
      },
    },
  },
}

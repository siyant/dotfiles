return {
  "akinsho/bufferline.nvim",
  keys = {
    { "<leader>1", function() require("bufferline").go_to(1, true) end, desc = "Go to buffer 1" },
    { "<leader>2", function() require("bufferline").go_to(2, true) end, desc = "Go to buffer 2" },
    { "<leader>3", function() require("bufferline").go_to(3, true) end, desc = "Go to buffer 3" },
    { "<leader>4", function() require("bufferline").go_to(4, true) end, desc = "Go to buffer 4" },
    { "<leader>5", function() require("bufferline").go_to(5, true) end, desc = "Go to buffer 5" },
    { "<leader>6", function() require("bufferline").go_to(6, true) end, desc = "Go to buffer 6" },
    { "<leader>7", function() require("bufferline").go_to(7, true) end, desc = "Go to buffer 7" },
    { "<leader>8", function() require("bufferline").go_to(8, true) end, desc = "Go to buffer 8" },
    { "<leader>9", function() require("bufferline").go_to(9, true) end, desc = "Go to buffer 9" },
  },
  opts = {
    options = {
      numbers = function(opts)
        return string.format("%s", opts.ordinal)
      end,
    },
    highlights = {
      buffer_selected = { bg = "#434c5d" },
      close_button_selected = { bg = "#434c5d" },
      separator_selected = { bg = "#434c5d" },
      indicator_selected = { bg = "#434c5d" },
      tab_selected = { bg = "#434c5d" },
      tab_separator_selected = { bg = "#434c5d" },
      numbers_selected = { bg = "#434c5d" },
      diagnostic_selected = { bg = "#434c5d" },
      hint_selected = { bg = "#434c5d" },
      hint_diagnostic_selected = { bg = "#434c5d" },
      info_selected = { bg = "#434c5d" },
      info_diagnostic_selected = { bg = "#434c5d" },
      warning_selected = { bg = "#434c5d" },
      warning_diagnostic_selected = { bg = "#434c5d" },
      error_selected = { bg = "#434c5d" },
      error_diagnostic_selected = { bg = "#434c5d" },
      modified_selected = { bg = "#434c5d" },
      duplicate_selected = { bg = "#434c5d" },
      pick_selected = { bg = "#434c5d" },
    },
  },
}

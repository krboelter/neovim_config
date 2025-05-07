require("buffer_manager").setup({
  line_keys = "1234567890", -- start: default
  select_menu_item_commands = {
    edit = {
      key = "<CR>",
      command = "edit"
    }
  },
  focus_alternate_buffer = false,
  width = nil,
  height = nil,
  short_file_names = false,
  show_depth = true,
  short_term_names = false,
  loop_nav = true,
  highlight = "",
  win_extra_options = {},
  borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
  format_function = nil,
  order_buffers = nil,
  show_indicators = nil, -- end: default
})

vim.keymap.set("n", "<leader>b", function() require("buffer_manager.ui").toggle_quick_menu() end)

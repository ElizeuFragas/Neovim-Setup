local cmd = vim.cmd

require("monokai-pro").setup({
  transparent_background = false,
  italic_comments = true,
  filter = 'classic',
  inc_search = "background", -- underline | background
  background_clear = { "float_win", "toggleterm", "telescope", "which-key", "renamer" },
  diagnostic = {
    background = true,
  },
  plugins = {
    bufferline = {
      underline_selected = true,
      underline_visible = true,
    },
    indent_blankline = {
      context_highlight = "classic", -- default | pro
    },
  },
})
cmd([[colorscheme monokai-pro]])
cmd([[hi StatusLineNC guibg=#272822]])
cmd[[hi! link StatusLine Normal]]
vim.o.termguicolors=true

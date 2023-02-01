require("monokai-pro").setup({
  transparent_background = true,
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
      context_highlight = "default", -- default | pro
    },
  },
})
vim.cmd([[colorscheme monokai-pro]])
vim.o.termguicolors=true

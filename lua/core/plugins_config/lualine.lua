require('lualine').setup{
    options = {
        icons_enabled = true,
        component_separators = { left = '', right = ''},
        theme = 'jellybeans',
        --theme = 'monokai-pro',
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', {
            'diagnostics', sources = { 'nvim_diagnostic'}, sections = { 'error', 'warn', 'info', 'hint' }, symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'},}},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
--    tabline = {
--
--        lualine_a = {
--            {
--                'buffers',
--
--                symbols = {
--                    modified = ' ●',      -- Text to show when the buffer is modified
--                    alternate_file = '#', -- Text to show to identify the alternate file
--                    directory =  '',     -- Text to show when the buffer is a directory
--                },
--            }
--        }
--        ,
--        lualine_b = {'branch'},
--        lualine_c = {'filename'},
--        lualine_x = {},
--        lualine_y = {},
--        lualine_z = {'tabs'}
--    }
    extensions = {'nvim-tree'},
}


require('lualine').setup{
    options = {
        icons_enabled = true,
        section_separators = { left = '', right = ''} ,
        component_separators = { left = '', right = ''},
        theme = 'jellybeans',
        --theme = 'monokai-pro',
        disabled_filetypes = {'packer', 'NvimTree'}
    },
    sections = {
        lualine_a = {
            {
                'mode',
                separator = {left = '', right = ''},
            }
        },
        lualine_b = {
            'branch',
            {
                'diff',
                separator = {left = '', right = ''},
            },
            {
                'diagnostics',
                sources = {'nvim_diagnostic'},
                sections = { 'error', 'warn', 'info', 'hint' },
                symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'},
                separator = {left = '', right = ''},

            }
        },
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {
            {
                'location',
                separator = {left = '', right = ''}
            }
        }
    },
    extensions = {'nvim-tree'}
}
--local cmd = vim.cmd

--cmd[[au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif]]










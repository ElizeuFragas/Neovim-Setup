require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup({
	--ensure_installed = { "lua_ls", "jdtls", "cssls", "html"},
})

require("mason-lspconfig").setup_handlers {
    -- The first entry (without a key) will be the default handler
    -- and will be called for each installed server that doesn't have
    -- a dedicated handler.
    function (server_name) -- default handler (optional)
        require("lspconfig")[server_name].setup {}
    end,
    -- Next, you can provide a dedicated handler for specific servers.
    -- For example, a handler override for the `rust_analyzer`:
}
require'lspconfig'.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
--local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- After setting up mason-lspconfig you may set up servers via lspconfig
--
--require("lspconfig").html.setup{
--   capabilities = capabilities,
--	on_attach = on_attach,
--}
--
--require("lspconfig").jdtls.setup {
--   capabilities = capabilities,
--	on_attach = on_attach,
--}
--require("lspconfig").lua_ls.setup {
--   capabilities = capabilities,
--	on_attach = on_attach
--}
--require'lspconfig'.jedi_language_server.setup{
--   capabilities = capabilities,
--	on_attach = on_attach,
--}

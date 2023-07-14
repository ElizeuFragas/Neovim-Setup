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
--local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- After setting up mason-lspconfig you may set up servers via lspconfig
--
--require("lspconfig").cssls.setup{
--   capabilities = capabilities,
--	on_attach = on_attach,
--}
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
